.class public Lcom/android/internal/telephony/DataServiceStateTracker;
.super Landroid/os/Handler;
.source "DataServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xf

.field private static final EVENT_DATA_NETWORK_STATE_CHANGED:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0xa

.field private static final EVENT_NV_READY:I = 0x1b

.field private static final EVENT_POLL_STATE_REGISTRATION:I = 0x3

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field private static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x14

.field private static final EVENT_RUIM_READY:I = 0x1a

.field private static final EVENT_RUIM_RECORDS_LOADED:I = 0x1d

.field private static final EVENT_SIM_READY:I = 0x19

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0x1c

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field private static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"


# instance fields
.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

.field m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private mContext:Landroid/content/Context;

.field private mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionState:I

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDataServiceStateRegistrants:Landroid/os/RegistrantList;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mGsmRoaming:Z

.field private mNewDataConnectionState:I

.field private mNewSS:Landroid/telephony/ServiceState;

.field private mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private mPollingContext:[I

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

.field private mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

.field mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSs:Landroid/telephony/ServiceState;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "dct"
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object p4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, v4, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p2, p4, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    new-instance v0, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .local v0, newSubscriptionSource:I
    iget v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string v1, "cdma subscription source changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 10
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCdmaRoamingBetweenOperators returned:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", because mDct.getSubscriptionInfo() is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataServiceStateTracker;->logd(Ljava/lang/String;)V

    move v5, p1

    :goto_0
    return v5

    :cond_0
    const-string v5, "gsm.sim.operator.alpha"

    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v7, "empty"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v9

    .local v0, equalsOnsl:Z
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v9

    .local v1, equalsOnss:Z
    :goto_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    move v5, v9

    goto :goto_0

    .end local v0           #equalsOnsl:Z
    .end local v1           #equalsOnss:Z
    :cond_1
    move v0, v8

    goto :goto_1

    .restart local v0       #equalsOnsl:Z
    :cond_2
    move v1, v8

    goto :goto_2

    .restart local v1       #equalsOnss:Z
    :cond_3
    move v5, v8

    goto :goto_0
.end method

.method private isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "gsm.sim.operator.alpha"

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v9

    iget v9, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v10, "empty"

    invoke-static {v8, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v12

    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v12

    .local v2, equalsOnss:Z
    :goto_1
    const-string v8, "gsm.sim.operator.numeric"

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v9

    iget v9, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v10, ""

    invoke-static {v8, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, equalsMcc:Z
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    move v8, v12

    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v11

    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v11

    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v11

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    const-string v0, "unknown"

    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_4
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_5
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    :pswitch_6
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    :pswitch_7
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_8
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_9
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    :pswitch_b
    const-string v0, "CDMA - EHRPD"

    goto :goto_0

    :pswitch_c
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "ss"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object p0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .local v1, ints:[I
    aget v3, v1, v6

    .local v3, state:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .end local v1           #ints:[I
    .end local v3           #state:I
    :cond_2
    return-void

    .restart local v1       #ints:[I
    .restart local v3       #state:I
    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    goto :goto_1
.end method

.method private pollState(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollstate() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aput v2, v0, v2

    sget-object v0, Lcom/android/internal/telephony/DataServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 13

    .prologue
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Poll ServiceState done: oldSS=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] newSS=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-eqz v11, :cond_8

    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-nez v11, :cond_8

    const/4 v11, 0x1

    move v2, v11

    .local v2, hasDataConnectionAttached:Z
    :goto_0
    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-nez v11, :cond_9

    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    move v4, v11

    .local v4, hasDataConnectionDetached:Z
    :goto_1
    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v11, v12, :cond_0

    const-string v11, "Data connection has attached when data technology is uknown."

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->logw(Ljava/lang/String;)V

    :cond_0
    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    iget v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eq v11, v12, :cond_a

    const/4 v11, 0x1

    move v3, v11

    .local v3, hasDataConnectionChanged:Z
    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x1

    move v1, v11

    .local v1, hasChanged:Z
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    move v7, v11

    .local v7, hasRoamingOn:Z
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x1

    move v6, v11

    .local v6, hasRoamingOff:Z
    :goto_5
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v12

    if-eq v11, v12, :cond_e

    const/4 v11, 0x1

    move v5, v11

    .local v5, hasRadioTechChanged:Z
    :goto_6
    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .local v9, tss:Landroid/telephony/ServiceState;
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    iput-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    iput v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-eqz v1, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_1
    if-eqz v2, :cond_2

    const-string v11, "uw_wifi"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    new-instance v10, Landroid/net/wifi/UwManager;

    invoke-static {v0}, Landroid/net/wifi/IUwManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IUwManager;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/net/wifi/UwManager;-><init>(Landroid/net/wifi/IUwManager;)V

    .local v10, uwManager:Landroid/net/wifi/UwManager;
    invoke-virtual {v10}, Landroid/net/wifi/UwManager;->getState()Landroid/net/wifi/UwState;

    move-result-object v8

    .local v8, state:Landroid/net/wifi/UwState;
    invoke-static {v8}, Landroid/net/wifi/UwState;->isConnected(Landroid/net/wifi/UwState;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "DATA"

    const-string v12, "attached and Uw is connected, do not to connect data service"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #b:Landroid/os/IBinder;
    .end local v8           #state:Landroid/net/wifi/UwState;
    .end local v10           #uwManager:Landroid/net/wifi/UwManager;
    :cond_2
    :goto_7
    if-eqz v4, :cond_3

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_3
    if-eqz v3, :cond_4

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    :cond_4
    if-eqz v5, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v11, "gsm.network.type"

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DataServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v7, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_6
    if-eqz v6, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_7
    return-void

    .end local v1           #hasChanged:Z
    .end local v2           #hasDataConnectionAttached:Z
    .end local v3           #hasDataConnectionChanged:Z
    .end local v4           #hasDataConnectionDetached:Z
    .end local v5           #hasRadioTechChanged:Z
    .end local v6           #hasRoamingOff:Z
    .end local v7           #hasRoamingOn:Z
    .end local v9           #tss:Landroid/telephony/ServiceState;
    :cond_8
    const/4 v11, 0x0

    move v2, v11

    goto/16 :goto_0

    .restart local v2       #hasDataConnectionAttached:Z
    :cond_9
    const/4 v11, 0x0

    move v4, v11

    goto/16 :goto_1

    .restart local v4       #hasDataConnectionDetached:Z
    :cond_a
    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_2

    .restart local v3       #hasDataConnectionChanged:Z
    :cond_b
    const/4 v11, 0x0

    move v1, v11

    goto/16 :goto_3

    .restart local v1       #hasChanged:Z
    :cond_c
    const/4 v11, 0x0

    move v7, v11

    goto/16 :goto_4

    .restart local v7       #hasRoamingOn:Z
    :cond_d
    const/4 v11, 0x0

    move v6, v11

    goto/16 :goto_5

    .restart local v6       #hasRoamingOff:Z
    :cond_e
    const/4 v11, 0x0

    move v5, v11

    goto/16 :goto_6

    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v5       #hasRadioTechChanged:Z
    .restart local v8       #state:Landroid/net/wifi/UwState;
    .restart local v9       #tss:Landroid/telephony/ServiceState;
    .restart local v10       #uwManager:Landroid/net/wifi/UwManager;
    :cond_f
    const-string v11, "DATA"

    const-string v12, "attached and connect data service"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_7
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .local v2, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    const v6, 0x108008a

    iput v6, v2, Landroid/app/Notification;->icon:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v0, ""

    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x378

    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    :goto_0
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-ne p1, v6, :cond_0

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1
    return-void

    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {v4, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected cancelPollState()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRestrictedStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForUnavailable(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    return-void
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "radio state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handleCdmaSubscriptionSource()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handleCdmaSubscriptionSource()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateIccAvailability()V

    const-string v1, "icc status changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "ruim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v1, "nv ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v1, "sim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v1, "records loaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v1, "data network state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x14 -> :sswitch_9
        0x19 -> :sswitch_5
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x1c -> :sswitch_6
        0x1d -> :sswitch_6
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 12
    .parameter "what"
    .parameter "ar"

    .prologue
    iget-object v8, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    if-eq v8, v9, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    const/4 v0, 0x0

    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_2

    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    :cond_2
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_4
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v8, :cond_5

    const-string v8, "DATA"

    const-string v9, "RIL implementation has returned an error where it must succeed"

    iget-object v10, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V

    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .restart local p1
    :cond_8
    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v8, "DATA"

    const-string v9, "RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v8, "DATA"

    const-string v9, "Exception while polling service state. Probably malformed RIL response."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RegStateResponse;

    .local v3, r:Lcom/android/internal/telephony/RegStateResponse;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v7

    .local v7, states:[Ljava/lang/String;
    const/4 v6, 0x4

    .local v6, registrationState:I
    const/4 v4, -0x1

    .local v4, radioTechnology:I
    const/4 v5, 0x0

    .local v5, reasonForDenial:I
    array-length v8, v7

    const/4 v9, 0x6

    if-eq v8, v9, :cond_9

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning! Wrong number of parameters returned from RIL_REQUEST_DATA_REGISTRATION_STATE: expected 6 got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    const/4 v8, 0x0

    :try_start_2
    aget-object v8, v7, v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_a
    const/4 v8, 0x3

    aget-object v8, v7, v8

    if-eqz v8, :cond_b

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_b
    const/4 v8, 0x4

    aget-object v8, v7, v8

    if-eqz v8, :cond_c

    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c

    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    :cond_c
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->setState(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v4}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    invoke-static {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    :cond_d
    invoke-static {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    :cond_e
    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    const-string v2, ""

    .local v2, mRegistrationDeniedReason:Ljava/lang/String;
    if-nez v5, :cond_f

    const-string v2, "General"

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data Registration denied : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2           #mRegistrationDeniedReason:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v1, v8

    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v8, "DATA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing RegistrationState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v2       #mRegistrationDeniedReason:Ljava/lang/String;
    :cond_f
    const/4 v8, 0x1

    if-ne v5, v8, :cond_10

    const-string v2, "Authentication Failure"

    goto :goto_3

    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Other : reasonForDenial = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_1

    const-string v1, "ro.config.svlte1x"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method logd(Ljava/lang/String;)V
    .locals 4
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method loge(Ljava/lang/String;)V
    .locals 4
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method logi(Ljava/lang/String;)V
    .locals 4
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method logv(Ljava/lang/String;)V
    .locals 4
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method logw(Ljava/lang/String;)V
    .locals 4
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    return-void
.end method

.method registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_1
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const-string v0, "update()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->dispose()V

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    new-instance v0, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v0, "Need to update the SIM/RUIM records.  Calling updateIccAvailability"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateIccAvailability()V

    return-void
.end method

.method public updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V
    .locals 1
    .parameter "roaming"
    .parameter "cdmaSubscriptionSource"
    .parameter "ss"

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto :goto_0
.end method

.method public updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "roaming"
    .parameter "ss"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/DataServiceStateTracker;->isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    return-void
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, new3gppApp:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v2

    .local v2, subscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v4, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v5, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v3, :cond_1

    const-string v3, "Removing stale 3gpp Application."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v3, :cond_1

    const-string v3, "Removing stale sim application records."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "New 3gpp application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    const/16 v3, 0x19

    invoke-virtual {v1, p0, v3, v6}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v4, 0x1c

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_3
    const/4 v0, 0x0

    .local v0, new3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v4, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v5, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v3, v0, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v3, :cond_5

    const-string v3, "Removing stale 3gpp2 Application."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v3, :cond_5

    const-string v3, "Removing stale ruim application records."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    :cond_5
    if-eqz v0, :cond_6

    const-string v3, "New 3gpp2 application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    const/16 v3, 0x1a

    invoke-virtual {v0, p0, v3, v6}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/RuimRecords;

    iput-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v3, :cond_6

    const-string v3, "New ruim application records found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v4, 0x1d

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_6
    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_7
    return-void
.end method
