.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0xc

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_PERSO_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCardIndex:I

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCdmaSubscriptionFromNv:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field private mFirstRun:Z

.field private mIccLockNewState:Z

.field private mIccLockOldState:Z

.field private mIccLockSwitched:Z

.field private mInitialized:Z

.field private mIsMultimodeCdmaPhone:Z

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuiteMode:Z

.field private mRadioOn:Z

.field private mServiceProviderLockedRegistrants:Landroid/os/RegistrantList;

.field private mSubNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 5
    .parameter "mContext"
    .parameter "cm"
    .parameter "cardIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubNetworkLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mServiceProviderLockedRegistrants:Landroid/os/RegistrantList;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    iput v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    const-string v1, "ro.config.multimode_cdma"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockOldState:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockNewState:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockSwitched:Z

    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iput p3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    new-instance v1, Landroid/os/Registrant;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2, v3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1, p2, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v1, 0x2

    invoke-interface {p2, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {p2, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->resetProperties()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "gsm.sim.state"

    const-string v2, "ABSENT"

    invoke-static {v1, v0, v2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yangxiangling EVENT_ICC_CHANGED: mIccLockOldState0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockOldState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private broadcastPersoSubState(Lcom/android/internal/telephony/UiccConstants$PersoSubState;)V
    .locals 5
    .parameter "state"

    .prologue
    const-string v4, "This Personalization substate is not handled: "

    const-string v3, "LOCKED"

    const-string v2, "RIL_IccCardProxy"

    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Personalization substate is not handled: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM network locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v0, "LOCKED"

    const-string v0, "SIM NETWORK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM network Subset locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v0, "LOCKED"

    const-string v0, "SIM NETWORK SUBSET"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM Corporate locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "SIM CORPORATE"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM Service Provider locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mServiceProviderLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v0, "LOCKED"

    const-string v0, "SIM SERVICE PROVIDER"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM SIM locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "SIM SIM"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Personalization substate is not handled: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM network1 locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "RUIM NETWORK1"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM network2 locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "RUIM NETWORK2"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM hrpd locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "RUIM HRPD"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM Corporate locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "RUIM CORPORATE"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM Service Provider locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "RUIM SERVICE PROVIDER"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM RUIM locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOCKED"

    const-string v0, "RUIM RUIM"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "RIL_IccCardProxy"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .local v1, newSubscriptionSource:I
    if-ne v1, v4, :cond_2

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-eqz v2, :cond_0

    const-string v2, "RIL_IccCardProxy"

    const-string v2, "Cdma multimode phone detected. Forcing IccCardProxy into 3gpp mode"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-nez v2, :cond_3

    move v0, v4

    .local v0, newQuiteMode:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    if-nez v2, :cond_1

    if-ne v0, v4, :cond_1

    const-string v2, "RIL_IccCardProxy"

    const-string v2, "Switching to QuiteMode."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "READY"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    const-string v2, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuiteMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (app_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " multimode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0           #newQuiteMode:Z
    :cond_2
    move v2, v6

    goto/16 :goto_0

    :cond_3
    move v0, v6

    goto :goto_1
.end method

.method private processLockedState()V
    .locals 4

    .prologue
    const-string v3, "LOCKED"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    .local v0, appState:Lcom/android/internal/telephony/UiccConstants$AppState;
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v1, "LOCKED"

    const-string v1, "PIN"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "LOCKED"

    const-string v1, "PUK"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForPersoSubstate(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForPersoSubstate(Landroid/os/Handler;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    :cond_6
    return-void
.end method

.method private updateQuiteMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "RIL_IccCardProxy"

    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Updating quite mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP subscription -> QuiteMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->handleCdmaSubscriptionSource()V

    goto :goto_0
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v0, :cond_0

    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "value"
    .parameter "reason"

    .prologue
    const-string v6, "RIL_IccCardProxy"

    const-string v5, " reason "

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    .local v2, subId:I
    iget v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    .local v1, slotId:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    if-eqz v3, :cond_0

    const-string v3, "RIL_IccCardProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuiteMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "phoneName"

    const-string v4, "Phone"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ss"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "reason"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v2, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    :cond_1
    const-string v3, "phone_subscription"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "card_slot_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "RIL_IccCardProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for subscription : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/UiccCardApplication;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 1
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->closeLogicalChannel(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->resetProperties()V

    return-void
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccCardApplication;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v1

    move v0, v1

    .local v0, retValue:Z
    :goto_0
    return v0

    .end local v0           #retValue:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIccPersoActivated()Z
    .locals 3

    .prologue
    const-string v2, "RIL_IccCardProxy"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .local v0, iccCardState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v1, "RIL_IccCardProxy"

    const-string v1, "getIccPersoActivated is true !"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "RIL_IccCardProxy"

    const-string v1, "getIccPersoActivated is false !"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v1

    move v0, v1

    .local v0, retValue:I
    :goto_0
    return v0

    .end local v0           #retValue:I
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v1

    move v0, v1

    .local v0, retValue:I
    :goto_0
    return v0

    .end local v0           #retValue:I
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getIccPuk1Blocked()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk1Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPinPukRetries()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getPinPukRetries()V

    :cond_0
    return-void
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 6

    .prologue
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .local v3, retState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    .local v1, cardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .local v0, appState:Lcom/android/internal/telephony/UiccConstants$AppState;
    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .local v2, persoState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v2

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-object v3

    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_7
    sget-object v4, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_a
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_b
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_c
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_d
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_e
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_f
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_10
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_11
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_12
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_13
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_14
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_15
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v8, "RIL_IccCardProxy"

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const-string v6, "RIL_IccCardProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled message with number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iput-boolean v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    goto :goto_0

    :pswitch_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    goto :goto_0

    :pswitch_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccLockEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockNewState:Z

    const-string v6, "RIL_IccCardProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yangxiangling EVENT_ICC_CHANGED: mIccLockNewState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockNewState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    goto :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v6, "ABSENT"

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getPinPukRetries()V

    goto :goto_0

    :pswitch_6
    const-string v6, "READY"

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getPinPukRetries()V

    goto :goto_0

    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v7, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    check-cast v6, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .local v3, operator:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move v4, v6

    .local v4, sub:I
    :goto_1
    if-eqz v3, :cond_3

    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6, v4, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    check-cast v6, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v6, "gsm.sim.operator.iso-country"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v4, v7}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :cond_1
    :goto_3
    const-string v6, "LOADED"

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3       #operator:Ljava/lang/String;
    :cond_2
    move v4, v10

    goto :goto_1

    .restart local v4       #sub:I
    :cond_3
    const-string v6, "RIL_IccCardProxy"

    const-string v6, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v1       #countryCode:Ljava/lang/String;
    :cond_4
    const-string v6, "RIL_IccCardProxy"

    const-string v6, "EVENT_RECORDS_LOADED Country code is null"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :pswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v7, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move v4, v6

    .restart local v4       #sub:I
    :goto_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, eventCode:I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    const-string v6, "gsm.sim.operator.alpha"

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    invoke-static {v6, v4, v7}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #eventCode:I
    .end local v4           #sub:I
    :cond_5
    move v4, v10

    goto :goto_4

    :pswitch_9
    const-string v6, "IMSI"

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCardApplication;->getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v5

    .local v5, subState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoSubState(Lcom/android/internal/telephony/UiccConstants$PersoSubState;)V

    sget-object v6, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move v4, v6

    .restart local v4       #sub:I
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v9, v8, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v4           #sub:I
    :cond_6
    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    move v4, v6

    goto :goto_5

    .end local v5           #subState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClassX"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/UiccCardApplication;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForServiceProviderLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mServiceProviderLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForSubNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method resetProperties()V
    .locals 4

    .prologue
    const-string v3, ""

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v0, v1, :cond_2

    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yangxiangling resetProperties: mIccLockSwitched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockSwitched:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockSwitched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockOldState:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockNewState:Z

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v2, ""

    invoke-static {v0, v1, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v2, ""

    invoke-static {v0, v1, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v2, ""

    invoke-static {v0, v1, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/UiccCardApplication;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockSwitched:Z

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccLockOldState:Z

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V
    .locals 3
    .parameter "subscription"

    .prologue
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yangxiangling setSubscriptionInfo sub= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->resetProperties()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    return-void
.end method

.method public setVoiceRadioTech(Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)V
    .locals 3
    .parameter "mVoiceRadioFamily"

    .prologue
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceProviderLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mServiceProviderLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method updateIccAvailability()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v7, "RIL_IccCardProxy"

    const-string v6, "CARD_IO_ERROR"

    const-string v5, "ABSENT"

    const/4 v0, 0x0

    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getIccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    const-string v1, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Card Index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCardIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/UiccManager;->getIccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_8

    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForUnavailable(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    iput-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    :cond_5
    if-nez v0, :cond_d

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_9

    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v1, "ABSENT"

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_a

    const-string v1, "ABSENT"

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v1, "RIL_IccCardProxy"

    const-string v1, "CardState neither error nor absent"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_c

    const-string v1, "ABSENT"

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_f

    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_10

    const-string v1, "ABSENT"

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string v1, "RIL_IccCardProxy"

    const-string v1, "CardState neither error nor absent when mApplication = newApplication"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
