.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$1;,
        Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;,
        Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;,
        Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;,
        Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field private static final CMD_ANSWER_RINGING_CALL:I = 0x4

.field private static final CMD_CLOSE_CHANNEL:I = 0x11

.field private static final CMD_END_CALL:I = 0x5

.field private static final CMD_EXCHANGE_APDU:I = 0xd

.field private static final CMD_HANDLE_NEIGHBORING_CELL:I = 0x2

.field private static final CMD_HANDLE_PIN_MMI:I = 0x1

.field private static final CMD_INVOKE_OEM_RIL_REQUEST:I = 0x7

.field private static final CMD_OPEN_CHANNEL:I = 0xf

.field private static final CMD_SET_DATA_SUBSCRIPTION:I = 0xa

.field private static final CMD_SILENCE_RINGER:I = 0x6

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x12

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0xe

.field private static final EVENT_INVOKE_OEM_RIL_REQUEST:I = 0x8

.field private static final EVENT_NEIGHBORING_CELL_DONE:I = 0x3

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x10

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0xb

.field private static final EVENT_UNSOL_OEM_HOOK_EXT_APP:I = 0x9

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInterfaceManager"

.field private static final SUBSCRIPTION:Ljava/lang/String; = "Subscription"


# instance fields
.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 496
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 497
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 498
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 499
    const-string v0, "PhoneInterfaceManager"

    const-string v1, " Registering for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 501
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return p1
.end method

.method private answerRingingCallInternal()V
    .locals 5

    .prologue
    .line 658
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 659
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_0

    .line 660
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 661
    .local v0, hasActiveCall:Z
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 662
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 668
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 678
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_0
    :goto_0
    return-void

    .line 673
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1515
    const/4 v1, 0x0

    .line 1520
    :goto_0
    return-object v1

    .line 1518
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x404

    if-eq v2, v3, :cond_0

    .line 1855
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only Smartcard API may access UICC"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1856
    :cond_0
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> exchangeAPDU "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/16 v10, 0xd

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v10, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/IccIoResult;

    .line 1862
    .local v10, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< exchangeAPDU "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget v2, v10, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v2, v2, 0x8

    iget v3, v10, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v2, v3

    const/high16 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1865
    .local v11, s:Ljava/lang/String;
    iget-object v2, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v2, :cond_1

    .line 1866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1867
    :cond_1
    return-object v11
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 513
    invoke-static {p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1524
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 507
    const-string v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 508
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 457
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    monitor-enter v1

    .line 466
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 468
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v2

    goto :goto_0

    .line 473
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 473
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 492
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .locals 5
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    .line 573
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    .line 574
    .local v3, sub:I
    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->isIdleOnSubscription(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    const/4 v4, 0x0

    .line 590
    :goto_0
    return v4

    .line 578
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 581
    .local v0, callingId:J
    if-eqz p1, :cond_1

    .line 582
    :try_start_0
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;

    move-result-object v2

    .line 586
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v2}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    const/4 v4, 0x1

    goto :goto_0

    .line 584
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 588
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private silenceRingerInternal()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 703
    :cond_0
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallOnSubscription(I)V

    .line 633
    return-void
.end method

.method public answerRingingCallOnSubscription(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 641
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 642
    return-void
.end method

.method public apnTypeAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1182
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->apnTypeAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public broadcastUnsolOemHookIntent([B)V
    .locals 3
    .parameter "payload"

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 480
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "Broadcasting intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->callOnSubscription(Ljava/lang/String;I)V

    .line 549
    return-void
.end method

.method public callOnSubscription(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 559
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 564
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 565
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "Subscription"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 1

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->cancelMissedCallsNotificationOnSubscription(I)V

    .line 1369
    return-void
.end method

.method public cancelMissedCallsNotificationOnSubscription(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1373
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 1374
    return-void
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 5
    .parameter "channel"

    .prologue
    const-string v4, "PhoneInterfaceManager"

    .line 1890
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x404

    if-eq v1, v2, :cond_0

    .line 1891
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1892
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> closeIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/16 v1, 0x11

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1895
    .local v0, err:Ljava/lang/Integer;
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "< closeIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1897
    const/4 v1, 0x1

    .line 1898
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->dialOnSubscription(Ljava/lang/String;I)V

    .line 523
    return-void
.end method

.method public dialOnSubscription(Ljava/lang/String;I)V
    .locals 5
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 538
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 540
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    const-string v3, "Subscription"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1176
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1351
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->disableLocationUpdatesOnSubscription(I)V

    .line 1431
    return-void
.end method

.method public disableLocationUpdatesOnSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1437
    return-void
.end method

.method public disableQos(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1192
    const-string v0, "disableQos"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableQos(I)I

    move-result v0

    return v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1171
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->enableLocationUpdatesOnSubscription(I)V

    .line 1421
    return-void
.end method

.method public enableLocationUpdatesOnSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1427
    return-void
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 1
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 1187
    const-string v0, "enableQos"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1188
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    .line 611
    .local v1, sub:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isIdleOnSubscription(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 614
    move v1, v0

    .line 618
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->endCallOnSubscription(I)Z

    move-result v2

    return v2

    .line 611
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public endCallOnSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 627
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActiveGateway(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 1722
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-class v1, Lcom/android/internal/net/IPVersion;

    invoke-static {v1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/net/IPVersion;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveInterfaceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 1704
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-class v1, Lcom/android/internal/net/IPVersion;

    invoke-static {v1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/net/IPVersion;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 1713
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-class v1, Lcom/android/internal/net/IPVersion;

    invoke-static {v1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/net/IPVersion;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneTypeOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getActivePhoneTypeOnSubscription(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCallStateOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCallStateOnSubscription(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconIndexOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexOnSubscription(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1576
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconModeOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeOnSubscription(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1589
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1596
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriTextOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextOnSubscription(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaNeedsProvisioning()Z
    .locals 1

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaNeedsProvisioningOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public getCdmaNeedsProvisioningOnSubscription(I)Z
    .locals 6
    .parameter "subscription"

    .prologue
    .line 1611
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneTypeOnSubscription(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1612
    const/4 v3, 0x0

    .line 1623
    :goto_0
    return v3

    .line 1615
    :cond_0
    const/4 v2, 0x0

    .line 1616
    .local v2, needsProvisioning:Z
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, cdmaMin:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->needsActivation(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 1623
    goto :goto_0

    .line 1619
    :catch_0
    move-exception v1

    .line 1621
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA MIN string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string v5, "was null"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v5, "was too short"

    goto :goto_2
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCellLocationOnSubscription(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationOnSubscription(I)Landroid/os/Bundle;
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v5, 0x0

    .line 1405
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1415
    .local v0, data:Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1416
    return-object v0

    .line 1407
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1411
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentSubscriptions()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1762
    invoke-static {}, Lcom/android/internal/telephony/ProxyManager;->getInstance()Lcom/android/internal/telephony/ProxyManager;

    move-result-object v0

    .line 1763
    .local v0, proxyManager:Lcom/android/internal/telephony/ProxyManager;
    if-eqz v0, :cond_1

    .line 1764
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->Pack()Landroid/os/Bundle;

    move-result-object v1

    .line 1770
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 1767
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1770
    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 1395
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 1390
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 1749
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getIccPin1RetryCountOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCountOnSubscription(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getIccPuk1Blocked()Z
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1Blocked()Z

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 1902
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getNeighboringCellInfoOnSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoOnSubscription(I)Ljava/util/List;
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1447
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :goto_0
    const/4 v1, 0x0

    .line 1461
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1467
    :goto_1
    return-object v1

    .line 1449
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1454
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1463
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1464
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkTypeOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeOnSubscription(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1651
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1652
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 1681
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1654
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1656
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1658
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 1660
    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 1662
    :pswitch_4
    const/16 v1, 0x9

    goto :goto_0

    .line 1664
    :pswitch_5
    const/16 v1, 0xa

    goto :goto_0

    .line 1667
    :pswitch_6
    const/4 v1, 0x4

    goto :goto_0

    .line 1669
    :pswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 1671
    :pswitch_8
    const/4 v1, 0x5

    goto :goto_0

    .line 1673
    :pswitch_9
    const/4 v1, 0x6

    goto :goto_0

    .line 1675
    :pswitch_a
    const/16 v1, 0xc

    goto :goto_0

    .line 1677
    :pswitch_b
    const/16 v1, 0xe

    goto :goto_0

    .line 1679
    :pswitch_c
    const/16 v1, 0xd

    goto :goto_0

    .line 1652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getPesnFromCard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 938
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getPesnFromCard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPesnFromCardOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPesnFromCardOnSubscription(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 944
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 945
    .local v0, getPesnFromRuim:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->start()V

    .line 946
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "getPesnFromCardOnSubscription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->getPesnFromRuim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 1815
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    .line 1757
    invoke-static {}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getQosStatus(I)I
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1212
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getQosStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getQosStatus(I)I

    move-result v0

    return v0
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1222
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 1223
    .local v0, checkSmscAddress:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->start()V

    .line 1224
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->checkSms()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSmscAddressOnSubscription(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1229
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 1230
    .local v0, checkSmscAddress:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->start()V

    .line 1231
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->checkSms()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1630
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getVoiceMessageCountOnSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountOnSubscription(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->handlePinMmiOnSubscription(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiOnSubscription(Ljava/lang/String;I)Z
    .locals 2
    .parameter "dialString"
    .parameter "subscription"

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1364
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCardOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1696
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1355
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 1805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccPukBlockedOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1784
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1Blocked()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isIdleOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isIdleOnSubscription(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 753
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 754
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 757
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 754
    goto :goto_0

    .line 757
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isModemPowerSave()Z
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isModemPowerSaveOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isModemPowerSaveOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isModemPowerSave()Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isOffhookOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isOffhookOnSubscription(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 723
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 727
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 724
    goto :goto_0

    .line 727
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 1

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOnOnSubscription(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isRingingOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isRingingOnSubscription(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 742
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 739
    goto :goto_0

    .line 742
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isSimPinEnabledOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isSimPinEnabledOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 767
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->isSimPinEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSimPukLockedOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 772
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->isSimPukLocked(I)Z

    move-result v0

    return v0
.end method

.method public isUSIM()Z
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v0

    return v0
.end method

.method public isUSIMOnSubscription(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v0

    return v0
.end method

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .locals 1
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 1197
    const-string v0, "modifyQos"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1198
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v0

    return v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    const-string v3, "PhoneInterfaceManager"

    .line 1881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x404

    if-eq v1, v2, :cond_0

    .line 1882
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1883
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> openIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1885
    .local v0, channel:Ljava/lang/Integer;
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "< openIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public resumeQos(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1207
    const-string v0, "resumeQos"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->resumeQos(I)I

    move-result v0

    return v0
.end method

.method public sendOemRilRequestRaw([B[B)I
    .locals 10
    .parameter "request"
    .parameter "response"

    .prologue
    const-string v9, "PhoneInterfaceManager"

    .line 1536
    const/4 v5, 0x0

    .line 1540
    .local v5, returnValue:I
    const/4 v6, 0x7

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, v6, p1, v7}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 1541
    .local v4, result:Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 1542
    const/4 v5, 0x0

    .line 1543
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1544
    iget-object p0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v3, v0

    .line 1545
    .local v3, responseData:[B
    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_0

    .line 1546
    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1551
    array-length v5, v3

    .line 1565
    .end local v3           #responseData:[B
    .end local v4           #result:Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return v5

    .line 1555
    .restart local v4       #result:Landroid/os/AsyncResult;
    .restart local p0
    :cond_2
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1556
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1557
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1559
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #result:Landroid/os/AsyncResult;
    .end local p0
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1560
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "PhoneInterfaceManager"

    const-string v6, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 1562
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public setDataReadinessChecks(ZZZ)V
    .locals 1
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1838
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setDataReadinessChecks(ZZZ)V

    .line 1839
    return-void
.end method

.method public setPesnToCard([B)Z
    .locals 2
    .parameter "pesn"

    .prologue
    .line 951
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "setPesnToCard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->setPesnToCardOnSubscription([BI)Z

    move-result v0

    return v0
.end method

.method public setPesnToCardOnSubscription([BI)Z
    .locals 3
    .parameter "pesn"
    .parameter "subscription"

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 957
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 958
    .local v0, setPesnToRuim:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->start()V

    .line 959
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "setPesnToCardOnSubscription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->setPesnToRuim([B)Z

    move-result v1

    return v1
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1823
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->setRadioOnSubscription(ZI)Z

    move-result v0

    return v0
.end method

.method public setRadioOnSubscription(ZI)Z
    .locals 3
    .parameter "turnOn"
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 1152
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1153
    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_0

    .line 1154
    invoke-virtual {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffOnSubscription(I)V

    .line 1156
    :cond_0
    return v2

    .line 1153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRilPowerOff()V
    .locals 1

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1161
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setRilPowerOff()V

    .line 1162
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 1334
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmscAddress the address is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1336
    return-void
.end method

.method public setSmscAddressOnSubscription(ILjava/lang/String;)V
    .locals 3
    .parameter "subscription"
    .parameter "address"

    .prologue
    .line 1341
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmscAddress the address is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1344
    return-void
.end method

.method public setTransmitPower(I)V
    .locals 1
    .parameter "powerLevel"

    .prologue
    .line 1847
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1848
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setTransmitPower(I)V

    .line 1849
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 595
    invoke-direct {p0, v0, v0}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .parameter "showDialpad"

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 688
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 689
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1735
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1739
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin"

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinOnSubscription(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public supplyPinOnSubscription(Ljava/lang/String;I)Z
    .locals 2
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 781
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 782
    .local v0, checkSimPin:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->start()V

    .line 783
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->checkPin(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 787
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 788
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->start()V

    .line 789
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPukOnSubscription(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "subscription"
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 1789
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1791
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1792
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->start()V

    .line 1793
    invoke-virtual {v0, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public suspendQos(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1202
    const-string v0, "suspendQos"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->suspendQos(I)I

    move-result v0

    return v0
.end method

.method public toggleRadioOnOff()V
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffOnSubscription(I)V

    .line 1140
    return-void
.end method

.method public toggleRadioOnOffOnSubscription(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1145
    return-void

    .line 1144
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1872
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1877
    invoke-direct/range {p0 .. p7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->updateServiceLocationOnSubscription(I)V

    .line 1113
    return-void
.end method

.method public updateServiceLocationOnSubscription(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1120
    return-void
.end method
