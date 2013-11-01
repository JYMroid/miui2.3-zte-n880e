.class public Lcom/android/internal/telephony/MMDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "MMDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMDataConnectionTracker$2;,
        Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x8

.field private static final DATA_POLL_WAKE_TIME:I = 0x1b7740

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final INTENT_RECONNECT_ALARM_IP_VERSION:Ljava/lang/String; = "ipv"

.field private static final INTENT_RECONNECT_ALARM_SERVICE_TYPE:Ljava/lang/String; = "ds"

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final MMS_FAIL_REASON:Ljava/lang/String; = "Card2 MMS fail"

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_IPV4:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_IPV6:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_MPDN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_MPDN_SERVICE_ARBITRATION:Z = false

.field private static final WAKE_POLL_DATA_ACTION:Ljava/lang/String; = "android.intent.action.WAKE_POLL_DATA"


# instance fields
.field isDctActive:Z

.field private lastRxPkts:J

.field private lastTxPkts:J

.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field mCdmaHomeOperatorNumeric:Ljava/lang/String;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataCallSetupPending:Z

.field private mDataConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPollIntent:Landroid/app/PendingIntent;

.field private mDesiredPowerState:Z

.field mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectPendingCount:I

.field mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mIsWifiConnected:Z

.field private mNoAutoAttach:Z

.field private mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

.field private mReconnectIntent:Landroid/app/PendingIntent;

.field mUpdateDataConnectionsContext:I

.field private mUwManager:Landroid/net/wifi/UwManager;

.field netstat:Landroid/os/INetStatService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const-string v0, "persist.telephony.support_ipv4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    const-string v0, "persist.telephony.support_ipv6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    const-string v0, "persist.telephony.mpdn"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    const-string v0, "persist.telephony.ds.arbit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 18
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    const-wide/16 v15, -0x1

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J

    const-wide/16 v15, -0x1

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J

    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    new-instance v15, Landroid/os/RegistrantList;

    invoke-direct {v15}, Landroid/os/RegistrantList;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v15, Lcom/android/internal/telephony/MMDataConnectionTracker$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v15, Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    new-instance v15, Lcom/android/internal/telephony/DataNetStatistics;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const-string v15, "netstat"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x9

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0xa

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x13

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xb

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x12

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xd

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xe

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x14

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v15, Landroid/os/Registrant;

    const/16 v16, 0x15

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x19

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x1a

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x1e

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->registerForDataProfileDbChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .local v10, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v5

    .local v5, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v8, v5, v11

    .local v8, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v15, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v15, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v8           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    const-string v15, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.VOICE_CALL_STARTED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.VOICE_CALL_ENDED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.WAKE_POLL_DATA"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->createDataConnectionList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .local v14, sp:Landroid/content/SharedPreferences;
    const-string v15, "disabled_on_boot_key"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .local v7, dataDisabledOnBoot:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    sget-object v16, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-nez v7, :cond_3

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    const-string v15, "DATA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMasterDataEnabled = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".+++Init in constructor of MMDataConnectionTracker++"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "persist.cust.tel.sdc.feature"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "socket_data_call_enable"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    const-string v15, "DATA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMasterDataEnabled = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".++Get from DB:SOCKET_DATA_CALL_ENABLE++"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v15, "connectivity"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .local v6, b:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v13

    .local v13, service:Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v5

    array-length v12, v5

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_5

    aget-object v8, v5, v11

    .restart local v8       #ds:Lcom/android/internal/telephony/DataServiceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    invoke-virtual {v15, v8}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Disabling ds"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v6           #b:Landroid/os/IBinder;
    .end local v8           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v13           #service:Landroid/net/IConnectivityManager;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .restart local v6       #b:Landroid/os/IBinder;
    .restart local v13       #service:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v15

    move-object v9, v15

    .local v9, e:Landroid/os/RemoteException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not access Connectivity Service."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v15, "ro.cdma.home.operator.numeric"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_IPV4 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_IPV6 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_MPDN = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_MPDN_SERVICE_ARBITRATION = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_OMH = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/DataProfileTracker;->isOmhEnabled()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PROPERTY_SUPPORT_EHRPD = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ro.config.ehrpd"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PROPERTY_SUPPORT_SVLTE1X = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ro.config.svlte1x"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MMDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/MMDataConnectionTracker;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/MMDataConnectionTracker;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setAlarmDataPoll()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/MMDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/MMDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/MMDataConnectionTracker;Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"
    .parameter "dataCallsInOrderOfPriority"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)Z

    move-result v0

    .local v0, setupDone:Z
    if-eqz v0, :cond_1

    move v1, v3

    .end local v0           #setupDone:Z
    :goto_0
    return v1

    :cond_0
    if-ne p4, v3, :cond_1

    const-string v1, "Skipping bringing up of low pri ds due to pending high pri ds"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDataConnectionList()V
    .locals 5

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/MMDataConnection;->makeDataConnection(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/MMDataConnection;

    move-result-object v1

    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/MMDataConnection;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/MMDataConnection;->setAvailable(Z)V

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method private destroyDataConnectionList()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized disconnectAllConnections(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "reason"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    if-eqz v3, :cond_1

    const-string v3, "disconnect all data connections in progress. queuing."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    iget v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    iget v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, m:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .end local v2           #m:Landroid/os/Message;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_0
.end method

.method private disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z
    .locals 8
    .parameter "serviceType"
    .parameter "reason"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .local v3, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataServiceType;->isLowerPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    .local v2, disconnectDone:Z
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    const/4 v2, 0x1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const/4 v6, 0x1

    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #disconnectDone:Z
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    :goto_1
    return v6

    .restart local v3       #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private freeDataConnection(Lcom/android/internal/telephony/MMDataConnection;)V
    .locals 2
    .parameter "dc"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/MMDataConnection;->isInactive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Assertion failed : Freeing inActive data call!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/MMDataConnection;->isAvailable()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "Assertion failed : freeDataCall when isAvailable() is already true!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/MMDataConnection;->setAvailable(Z)V

    return-void
.end method

.method private getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "ds"
    .parameter "ipv"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataCallStateByCid(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/DataCallState;
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)",
            "Lcom/android/internal/telephony/DataCallState;"
        }
    .end annotation

    .prologue
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    move-object v2, p0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, type:Lcom/android/internal/telephony/DataProfile$DataProfileType;
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "[getDataProfileTypeToUse] dataSubid = 1"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v2, "type set to PROFILE_TYPE_3GPP_APN while GSM is RADIO_TECH_UNKNOWN ."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataProfileTypeToUse] returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v2, "[getDataProfileTypeToUse] dataSubid = 0 or NULL"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataProfileTypeToUse] dataSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v0, v2, :cond_4

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->isOmhEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0
.end method

.method private getDesiredPowerState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    return v0
.end method

.method private getFreeDataConnection()Lcom/android/internal/telephony/MMDataConnection;
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/MMDataConnection;

    move-object v2, v0

    .local v2, dc:Lcom/android/internal/telephony/MMDataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/MMDataConnection;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/MMDataConnection;->isInactive()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/MMDataConnection;->setAvailable(Z)V

    move-object v4, v2

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dc:Lcom/android/internal/telephony/MMDataConnection;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    goto :goto_0
.end method

.method private handleConnectedDc(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V
    .locals 13
    .parameter "dc"
    .parameter "reason"

    .prologue
    const/4 v12, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleConnectedDc() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    const/4 v9, 0x1

    .local v9, needsDisconnect:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection;->getBearerType()Lcom/android/internal/telephony/Phone$BearerType;

    move-result-object v2

    .local v2, b:Lcom/android/internal/telephony/Phone$BearerType;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++handleConnectedDc()+++BearerType b = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/net/IPVersion;->values()[Lcom/android/internal/net/IPVersion;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/net/IPVersion;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lcom/android/internal/net/IPVersion;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v6, v0, v5

    .local v6, ipv:Lcom/android/internal/net/IPVersion;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++handleConnectedDc()+++ipv = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++handleConnectedDc()+++b.supportsIpVersion(ipv) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/Phone$BearerType;->supportsIpVersion(Lcom/android/internal/net/IPVersion;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/Phone$BearerType;->supportsIpVersion(Lcom/android/internal/net/IPVersion;)Z

    move-result v10

    if-nez v10, :cond_1

    .end local v5           #i$:I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++handleConnectedDc()+++support ipv:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and continue..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v3, v1, v4

    .local v3, ds:Lcom/android/internal/telephony/DataServiceType;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++handleConnectedDc()+++ds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v10, v3, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v10, v3, p1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/net/IPVersion;)V

    const-string v10, "+++handleConnectedDc()+++ begin to call notifyDataConnection() "

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v6, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-ne v10, v12, :cond_2

    const-string v10, "+++handleConnectedDc()+++ needsDisconnect = false "

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_2
    sget-object v10, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-ne v3, v10, :cond_3

    const-string v10, "+++handleConnectedDc()+++ Entered: if(ds==DataServiceType.SERVICE_TYPE_DEFAULT)++ "

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v10, "gsm.defaultpdpcontext.active"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #arr$:[Lcom/android/internal/telephony/DataServiceType;
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v4           #i$:I
    .end local v6           #ipv:Lcom/android/internal/net/IPVersion;
    .end local v8           #len$:I
    .restart local v5       #i$:I
    :cond_4
    if-ne v9, v12, :cond_5

    const-string v10, "+++handleConnectedDc()+++ begin to call tryDisconnectDataCall(). "

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v10, "apnTypeDisabled"

    invoke-direct {p0, p1, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    :cond_5
    return-void
.end method

.method private handleDisconnectedDc(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V
    .locals 8
    .parameter "dc"
    .parameter "reason"

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDisconnectedDc() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/MMDataConnection;

    move-object v6, v0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->freeDataConnection(Lcom/android/internal/telephony/MMDataConnection;)V

    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .local v2, ds:Lcom/android/internal/telephony/DataServiceType;
    const/4 v5, 0x0

    .local v5, needUpdate:Z
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    if-ne v6, p1, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    const/4 v5, 0x1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    if-ne v6, p1, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v2, v6, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v2, v6, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-ne v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "gsm.defaultpdpcontext.active"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v5           #needUpdate:Z
    :cond_3
    return-void
.end method

.method private isHigherPriorityDataCallActive(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 5
    .parameter "serviceType"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataServiceType;->isHigherPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :goto_1
    return v4

    .restart local v1       #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isIpAddrChanged(Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnection;)Z
    .locals 3
    .parameter "activeDC"
    .parameter "dc"

    .prologue
    const/4 v0, 0x0

    .local v0, ipaddrChanged:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DataCallState;->addresses:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isReadyForData()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDataConnectivityEnabled()Z

    move-result v2

    .local v2, isReadyForData:Z
    const/4 v0, 0x0

    .local v0, bSetup:Z
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v5, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-ne v5, v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]bSetup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v3

    .local v3, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    .local v4, roaming:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]roaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_1
    move v2, v7

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .local v1, dataRegState:I
    if-eqz v2, :cond_c

    if-nez v1, :cond_2

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v3, v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-nez v5, :cond_3

    if-eqz v0, :cond_c

    :cond_3
    move v2, v7

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mCheckForConnectivity]isReadyForData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .end local v1           #dataRegState:I
    .end local v4           #roaming:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]getRadioTechnology = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]r.isGsm() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]mDsst.mCdmaSubscriptionSource = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v6, v6, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]r.isUnknown() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isUnknown()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isReadyForData]mNoAutoAttach = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForSubscription:Z

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v5, v5, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-ne v5, v7, :cond_7

    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isUnknown()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-nez v5, :cond_7

    :cond_6
    if-eqz v0, :cond_8

    :cond_7
    if-eqz v2, :cond_d

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v5, :cond_d

    move v2, v7

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGSM]isReadyForData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v2, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v5, v5, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v5, v7, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_9
    move v2, v7

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isCdma]isReadyForData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    :cond_a
    return v2

    .restart local v4       #roaming:Z
    :cond_b
    move v2, v8

    goto/16 :goto_0

    .restart local v1       #dataRegState:I
    :cond_c
    move v2, v8

    goto/16 :goto_1

    .end local v1           #dataRegState:I
    .end local v4           #roaming:Z
    :cond_d
    move v2, v8

    goto :goto_2

    :cond_e
    move v2, v8

    goto :goto_3
.end method

.method private logDataConnectionFailure(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/net/IPVersion;Lcom/android/internal/telephony/DataConnectionFailCause;)V
    .locals 7
    .parameter "ds"
    .parameter "dp"
    .parameter "ipv"
    .parameter "cause"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p4}, Lcom/android/internal/telephony/DataConnectionFailCause;->isEventLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .local v1, loc:Landroid/telephony/CellLocation;
    const/4 v0, -0x1

    .local v0, id:I
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v2, v3, :cond_4

    :cond_1
    const v2, 0xc3bd

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v0           #id:I
    :cond_2
    :goto_1
    return-void

    .restart local v0       #id:I
    .restart local v1       #loc:Landroid/telephony/CellLocation;
    :cond_3
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0

    :cond_4
    const v2, 0xc3bf

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private notifyMMSDataConnectionFail(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    const-string v1, "++notifyMMSDataConnectionFail++"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MMS_DATACONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .local v1, otaProvision:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_0

    .end local v1           #otaProvision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local v1       #otaProvision:[I
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v2, "cdmaOtaPovisioning"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDataProfileListChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, reason:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setAlarmDataPoll()V
    .locals 7

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WAKE_POLL_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "seq"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v2, "[ZTE_FEATURE_ALWAYS_ON_MOBILE] setAlarmDataPoll() entered."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    .locals 4
    .parameter "dc"
    .parameter "reason"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryDisconnectDataCall : dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    .local v0, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iput-object p1, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iput-object p2, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, dcReason:I
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)Z
    .locals 9
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupDataCall : ds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++[DSDS]mSubscriptionData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v5, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v5, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-ne v5, v7, :cond_1

    sget-object v5, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    if-eq p1, v5, :cond_1

    const-string v5, "++[DSDS]ds!=SERVICE_TYPE_MMS"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v5, "dataNetworkDetached"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    :cond_0
    const-string v5, "[DSDS]mSubscriptionData.subId = 1, return"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    move v5, v8

    :goto_0
    return v5

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    .local v3, dp:Lcom/android/internal/telephony/DataProfile;
    if-nez v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no working data profile available to establish service type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    move v5, v8

    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Lower/Equal priority call disconnected."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v5, v7

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isHigherPriorityDataCallActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "Higher priority call active. Ignoring setup data call request."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v5, v8

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getFreeDataConnection()Lcom/android/internal/telephony/MMDataConnection;

    move-result-object v2

    .local v2, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v2, :cond_7

    sget-boolean v5, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v4, v7

    .local v4, ret:Z
    :goto_1
    move v5, v7

    goto :goto_0

    .end local v4           #ret:Z
    :cond_6
    move v4, v8

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUwManager:Landroid/net/wifi/UwManager;

    if-nez v5, :cond_8

    const-string v5, "uw_wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    new-instance v5, Landroid/net/wifi/UwManager;

    invoke-static {v0}, Landroid/net/wifi/IUwManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IUwManager;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/UwManager;-><init>(Landroid/net/wifi/IUwManager;)V

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUwManager:Landroid/net/wifi/UwManager;

    .end local v0           #b:Landroid/os/IBinder;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v5}, Landroid/net/wifi/UwManager;->getState()Landroid/net/wifi/UwState;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/UwState;->shouldLogout(Landroid/net/wifi/UwState;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    if-eq p1, v5, :cond_9

    const-string v5, "fmc : uw is connected and apn type is not mms, not to setup Data call"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_9
    const-string v5, "fmc : uw is not connected, still setup Data call"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    new-instance v1, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    .local v1, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iput-object v2, v1, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iput-object v3, v1, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    iput-object p1, v1, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iput-object p2, v1, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    iput-object p3, v1, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p2, v5, :cond_a

    sget-object v5, Lcom/android/internal/telephony/Phone$BearerType;->IP:Lcom/android/internal/telephony/Phone$BearerType;

    move-object v0, v5

    .local v0, b:Lcom/android/internal/telephony/Phone$BearerType;
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v5, v3, v0, v6}, Lcom/android/internal/telephony/DataConnection;->connect(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$BearerType;Landroid/os/Message;)V

    move v5, v7

    goto/16 :goto_0

    .end local v0           #b:Lcom/android/internal/telephony/Phone$BearerType;
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/Phone$BearerType;->IPV6:Lcom/android/internal/telephony/Phone$BearerType;

    move-object v0, v5

    goto :goto_2
.end method

.method private updateOperatorNumericInDpt(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "records are loaded, but both mSimrecords & mRuimRecords are null."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public disableQos(I)I
    .locals 5
    .parameter "qosId"

    .prologue
    const/4 v1, 0x1

    .local v1, result:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableQos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosRelease(I)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataProfileTracker;->unregisterForDataProfileDbChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->destroyDataConnectionList()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    return-void
.end method

.method dumpDataCalls()V
    .locals 5

    .prologue
    const-string v3, "---dc list---"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", bearerType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getBearerType()Lcom/android/internal/telephony/Phone$BearerType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ipaddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", dns="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public dumpDataReadinessinfo()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "/"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[DataRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data network state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMasterDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is Roaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataOnRoamingEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPsRestricted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", desiredPowerState  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSIMRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", cdmaSubSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", mRuimRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ", checks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForSubscription:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method dumpDataServiceTypes()V
    .locals 10

    .prologue
    const-string v9, ")"

    const-string v8, "("

    const-string v5, "---ds list---"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ds= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", active = v4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, " v6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 6
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .local v1, result:I
    invoke-static {p2}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v2

    .local v2, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v2, :cond_0

    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableQos: serviceType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosSetup(Lcom/android/internal/telephony/QosSpec;)V

    const/4 v1, 0x0

    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return v1
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, dcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MMDataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getQosStatus(I)I
    .locals 5
    .parameter "qosId"

    .prologue
    const/4 v1, 0x1

    .local v1, result:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQosStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->getQosStatus(I)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const-string v3, "cdmaSubscriptionSourceChanged"

    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    if-nez v0, :cond_0

    const-string v0, "Ignoring handler messages, DCT marked as disposed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onUpdateDataConnections(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataConnectionAttached()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataConnectionDetached()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRadioTechnologyChanged()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataCallListChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataProfileListChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    const-string v2, "cdmaSubscriptionSourceChanged"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "cdmaSubscriptionSourceChanged"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string v0, "PS restrict enabled."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    iput-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    :pswitch_b
    const-string v0, "PS restrict disable."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    const-string v0, "psRestrictDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onTetheredModeStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataCallDropped(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_d
    .end packed-switch
.end method

.method protected isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v0

    return v0
.end method

.method logd(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

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

    const-string v2, " ] "

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
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

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

    const-string v2, " ] "

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

.method logi(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

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

    const-string v2, " ] "

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

.method logv(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

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

    const-string v2, " ] "

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
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

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

    const-string v2, " ] "

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

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .locals 5
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    const/4 v1, 0x1

    .local v1, result:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyQos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->qosModify(ILcom/android/internal/telephony/QosSpec;)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public notifyAllDataDisconnected()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method protected onConnectDone(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    .local v2, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    const-string v10, "DATA"

    const-string v11, "fmc : onConnectDone"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v10, :cond_0

    const-string v10, "DATA"

    const-string v11, "fmc : mDpt.mPreferredDefaultApn = null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const-string v10, "Data call setup : SUCCESS"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  data profile  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  service type  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  data call id  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget v11, v11, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ip version    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ip address/gw : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  dns           : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->handleConnectedDc(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .end local p1
    :goto_1
    return-void

    .restart local p1
    :cond_0
    const-string v10, "DATA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fmc : mDpt.mPreferredDefaultApn.id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    iget v12, v12, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    iget v11, v11, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->setPppdApnFile(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    check-cast v1, Lcom/android/internal/telephony/MMDataConnection;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->freeDataConnection(Lcom/android/internal/telephony/MMDataConnection;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/DataConnectionFailCause;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    move-object v3, v0

    .local v3, cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const-string v10, "Data call setup : FAILED"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  data profile  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  service type  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ip version    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  fail cause    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const/4 v5, 0x1

    .local v5, needDataConnectionUpdate:Z
    sget-object v10, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v3, v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/net/IPVersion;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    :cond_2
    :goto_2
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfile;->isWorking(Lcom/android/internal/net/IPVersion;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v10, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "notifyDataConnectionFail,MMS_FAIL_REASON"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v10, "Card2 MMS fail"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyMMSDataConnectionFail(Ljava/lang/String;)V

    :cond_3
    if-eqz v5, :cond_4

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    :cond_4
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v10, v11, v12, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logDataConnectionFailure(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/net/IPVersion;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->isDataProfileFailure()Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/net/IPVersion;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    goto :goto_2

    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPdpAvailabilityFailure()Z

    move-result v10

    if-eqz v10, :cond_8

    sget-boolean v10, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v10, :cond_7

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "Disconnected low priority data call [pdp availability failure.]"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    goto/16 :goto_2

    :cond_8
    sget-boolean v10, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "Disconnected low priority data call [pdp availability failure.]"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPermanentFail()Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permanent failure. Disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/net/IPVersion;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    goto/16 :goto_2

    :cond_a
    const-string v10, "Data call setup failure cause unknown / temporary failure."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    .local v8, retryManager:Lcom/android/internal/telephony/RetryManager;
    const/4 v9, 0x0

    .local v9, scheduleAlarm:Z
    const-wide/16 v6, 0x0

    .local v6, nextReconnectDelay:J
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v9, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v10

    int-to-long v6, v10

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    :goto_3
    if-eqz v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling next attempt on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v6, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s. Retry count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .local v1, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v10, "reason"

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "ds"

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataServiceType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "ipv"

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v11}, Lcom/android/internal/net/IPVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v6

    iget-object v13, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v5, 0x1

    goto/16 :goto_2

    .end local v1           #am:Landroid/app/AlarmManager;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No retries left, disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/net/IPVersion;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v12

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    goto/16 :goto_3

    :cond_c
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    sget-object v11, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-eq v10, v11, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-nez v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No data profiles left to try, disabling service  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry forever using last disabled data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x1

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/net/IPVersion;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/net/IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnectionFail(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    const/4 v9, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v10

    int-to-long v6, v10

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    goto/16 :goto_3
.end method

.method protected onDataCallDropped(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    .local v0, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataCallDropped: dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->handleDisconnectedDc(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "moblie_data_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    const-string v2, "networkOrModemDisconnect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDataCallListChanged(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/16 v12, 0x1f

    const-string v13, "networkOrModemDisconnect"

    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .local v6, dcStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "onDataCallListChanged:"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    const-string v10, "---dc state list---"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataCallState;

    .local v4, d:Lcom/android/internal/telephony/DataCallState;
    if-eqz v4, :cond_2

    iget v10, v4, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto :goto_1

    .end local v4           #d:Lcom/android/internal/telephony/DataCallState;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataCalls()V

    const/4 v9, 0x1

    .local v9, isDataDormant:Z
    const/4 v2, 0x0

    .local v2, activeDataCallCount:I
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    :pswitch_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataConnection;

    .local v5, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    iget v10, v5, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataCallStateByCid(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .local v1, activeDC:Lcom/android/internal/telephony/DataCallState;
    if-nez v1, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DC has disappeared from list : dc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    .local v3, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iput-object v5, v3, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    const-string v10, "networkOrModemDisconnect"

    iput-object v13, v3, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v12, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/DataConnection;->reset(Landroid/os/Message;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v3           #c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    :cond_5
    iget v10, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-nez v10, :cond_6

    iget v10, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v10}, Lcom/android/internal/telephony/DataConnectionFailCause;->getDataConnectionDisconnectCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v7

    .local v7, failCause:Lcom/android/internal/telephony/DataConnectionFailCause;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DC is inactive : dc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   inactive cause = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    .restart local v3       #c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iput-object v5, v3, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    const-string v10, "networkOrModemDisconnect"

    iput-object v13, v3, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v12, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/DataConnection;->reset(Landroid/os/Message;)V

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .end local v3           #c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    .end local v7           #failCause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :cond_6
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isIpAddrChanged(Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnection;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ip address change detected on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new IpAddr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/internal/telephony/DataCallState;->addresses:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",old IpAddr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    const-string v10, "dataConnectionPropertyChanged"

    invoke-direct {p0, v5, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_7
    iget v10, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    packed-switch v10, :pswitch_data_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dc.cid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", unexpected DataCallState.active="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    const/4 v9, 0x0

    goto/16 :goto_2

    .end local v1           #activeDC:Lcom/android/internal/telephony/DataCallState;
    .end local v5           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_8
    if-eqz v9, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataActivity()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDataCallListChanged: - activeDataCallCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v10, "onDataCallListChanged: - Notify all data disconnect from modem."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataDisconnected()V

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDataConnectionAttached()V
    .locals 2

    .prologue
    const-string v1, "dataNetworkAttached"

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v0, "dataNetworkAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    const-string v0, "dataNetworkAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 1

    .prologue
    const-string v0, "dataNetworkDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    .local v0, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectDone: reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->handleDisconnectedDc(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, m:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v4, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v4, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    const-string v3, "Disabling SERVICE_TYPE_MMS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    const-string v4, "dataSleep"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_3

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v3, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected onMasterDataDisabled(Landroid/os/Message;)V
    .locals 1
    .parameter "onCompleteMsg"

    .prologue
    const-string v0, "masterDataDisabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;Landroid/os/Message;)Z

    return-void
.end method

.method protected onMasterDataEnabled()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v0, "masterDataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method public onNationRoamingOff()V
    .locals 1

    .prologue
    const-string v0, "wangcheng onNationRoamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v0, "nationRoamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method public onNationRoamingOn()V
    .locals 2

    .prologue
    const-string v1, "nationRoamingOn"

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnNationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wangcheng onNationRoamingOn setup data"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v0, "nationRoamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "wangcheng Tear down data connection on nation roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    const-string v0, "nationRoamingOn"

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onRadioOff()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    return-void
.end method

.method protected onRadioOn()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v0, "radioOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onRadioTechnologyChanged()V
    .locals 2

    .prologue
    const-string v1, "radioTechnologyChanged"

    const-string v0, "radioTechnologyChanged"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v0, "radioTechnologyChanged"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    const-string v1, "iccRecordsLoaded"

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->readDataprofilesFromModem()V

    :cond_0
    const-string v0, "iccRecordsLoaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateOperatorNumericInDpt(Ljava/lang/String;)Z

    const-string v0, "iccRecordsLoaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onRoamingOn()V
    .locals 2

    .prologue
    const-string v1, "roamingOn"

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "roamingOn"

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;Landroid/os/Message;)Z

    :cond_0
    const-string v0, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V
    .locals 18
    .parameter "ds"

    .prologue
    invoke-static {}, Lcom/android/internal/net/IPVersion;->values()[Lcom/android/internal/net/IPVersion;

    move-result-object v4

    .local v4, arr$:[Lcom/android/internal/net/IPVersion;
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v4           #arr$:[Lcom/android/internal/net/IPVersion;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v9, v4, v8

    .local v9, ipv:Lcom/android/internal/net/IPVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V

    .end local v8           #i$:I
    :cond_0
    :goto_1
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    .local v6, dc:Lcom/android/internal/telephony/DataConnection;
    const/4 v14, 0x1

    .local v14, tearDownNeeded:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataServiceInfo;->getDataProfiles()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/DataProfileTracker;->getPreferredDefaultApnFromDbPublic(Ljava/util/ArrayList;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v12

    .local v12, mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnSetting;

    .local v3, apnUsed:Lcom/android/internal/telephony/ApnSetting;
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v5

    .local v5, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v11, v5

    .local v11, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_2
    if-ge v7, v11, :cond_3

    aget-object v13, v5, v7

    .local v13, t:Lcom/android/internal/telephony/DataServiceType;
    move-object v0, v13

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    invoke-virtual {v15, v13}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    invoke-virtual {v15, v13, v9}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v15

    if-ne v15, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    invoke-virtual {v15, v12, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isApnDifferentPublic(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v14, 0x0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v13           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tearDownNeeded:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    if-eqz v14, :cond_0

    const-string v15, "apnTypeDisabled"

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    goto/16 :goto_1

    .end local v3           #apnUsed:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #arr$:[Lcom/android/internal/telephony/DataServiceType;
    .end local v6           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v7           #i$:I
    .end local v9           #ipv:Lcom/android/internal/net/IPVersion;
    .end local v11           #len$:I
    .end local v12           #mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v14           #tearDownNeeded:Z
    .restart local v8       #i$:I
    :cond_4
    const-string v15, "apnTypeDisabled"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V
    .locals 1
    .parameter "type"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V

    const-string v0, "apnTypeEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    return-void
.end method

.method onTetheredModeStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .local v2, ret:[I
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    const-string v3, "Error: Invalid Tethered mode received"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    aget v1, v2, v3

    .local v1, mode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTetheredModeStateChanged: mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Invalid Tethered mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v3, "Unsol Indication: RIL_TETHERED_MODE_ON"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v3, "Unsol Indication: RIL_TETHERED_MODE_OFF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v3, "tetheredModeStateChanged"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onUpdateDataConnections(Ljava/lang/String;I)V
    .locals 10
    .parameter "reason"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v6, "   mCm.getRadioState() = "

    const-string v6, "   getDesiredPowerState() = "

    const-string v6, "   "

    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    if-eq p2, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateDataConnections [ignored] : reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateDataConnections: reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataCalls()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataServiceTypes()V

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v8

    .local v4, isReadyForData:Z
    :goto_1
    if-nez v4, :cond_3

    const-string v6, "***** NOT Ready for data :"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   getDesiredPowerState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   mCm.getRadioState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataReadinessinfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v4           #isReadyForData:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    move v4, v9

    goto :goto_1

    .restart local v4       #isReadyForData:Z
    :cond_3
    :try_start_2
    const-string v6, "Ready for data : "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   getDesiredPowerState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   mCm.getRadioState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataReadinessinfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    if-ne v6, v8, :cond_4

    const-string v6, "Data Call setup pending. Not trying to bring up any new data connections."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v6, :cond_5

    const-string v6, "Data Call disconnect request pending.Not trying to bring up any new data connections."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    move v1, v8

    .local v1, dataCallsInOrderOfPriority:Z
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v5, :cond_b

    aget-object v2, v0, v3

    .local v2, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-ne v6, v8, :cond_9

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v2, v6, p1, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_8
    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v2, v6, p1, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #arr$:[Lcom/android/internal/telephony/DataServiceType;
    .end local v1           #dataCallsInOrderOfPriority:Z
    .end local v2           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_a
    move v1, v9

    goto :goto_2

    .restart local v0       #arr$:[Lcom/android/internal/telephony/DataServiceType;
    .restart local v1       #dataCallsInOrderOfPriority:Z
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_b
    const-string v6, "onUpdateDataConnections end"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const-string v1, "2GVoiceCallEnded"

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    return-void
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    const-string v1, "2GVoiceCallStarted"

    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .local v0, anyDcActive:Z
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anyDcActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v3, "notify All Data Disconnected"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_2
    return-void
.end method

.method public registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeQos(I)I
    .locals 5
    .parameter "qosId"

    .prologue
    const/4 v1, 0x1

    .local v1, result:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeQos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosResume(I)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public declared-synchronized setDataConnectionAsDesired(ZLandroid/os/Message;)V
    .locals 1
    .parameter "desiredPowerState"
    .parameter "onCompleteMsg"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    if-nez v0, :cond_1

    const-string v0, "radioTurnedOff"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDataReadinessChecks(ZZZ)V
    .locals 1
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    iput-boolean p2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForSubscription:Z

    if-eqz p3, :cond_0

    const-string v0, "dataReadinessChecksModified"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V
    .locals 2
    .parameter "subData"

    .prologue
    iget v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateIccAvailability()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->setSubscription(I)V

    :cond_0
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->isEnablePoll()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->resetPollStats()V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setEnablePoll(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->run()V

    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setEnablePoll(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public suspendQos(I)I
    .locals 5
    .parameter "qosId"

    .prologue
    const/4 v1, 0x1

    .local v1, result:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suspendQos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosSuspend(I)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ProxyManager$Subscription;)V
    .locals 6
    .parameter "ci"
    .parameter "subData"

    .prologue
    const/4 v5, 0x0

    if-nez p2, :cond_1

    const-string v3, "update(): Supplied subscription info is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v0

    .local v0, currentDds:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): subData.subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentDds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    iget v3, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-ne v3, v0, :cond_0

    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    check-cast v1, Lcom/android/internal/telephony/MMDataConnection;

    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/MMDataConnection;->update(Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x8

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x14

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget v4, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/DataProfileTracker;->update(Lcom/android/internal/telephony/CommandsInterface;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataServiceStateTracker;->update(Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    goto/16 :goto_0
.end method

.method protected updateDataConnections(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataConnections :mUpdateDataConnectionsContext ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
