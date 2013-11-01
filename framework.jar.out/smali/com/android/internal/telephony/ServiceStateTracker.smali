.class public abstract Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# static fields
.field protected static final DATA_ACCESS_CDMA_1xRTT:I = 0x6

.field protected static final DATA_ACCESS_CDMA_EvDo_0:I = 0x7

.field protected static final DATA_ACCESS_CDMA_EvDo_A:I = 0x8

.field protected static final DATA_ACCESS_CDMA_EvDo_B:I = 0xc

.field protected static final DATA_ACCESS_CDMA_IS95A:I = 0x4

.field protected static final DATA_ACCESS_CDMA_IS95B:I = 0x5

.field protected static final DATA_ACCESS_EDGE:I = 0x2

.field protected static final DATA_ACCESS_EHRPD:I = 0xd

.field protected static final DATA_ACCESS_GPRS:I = 0x1

.field protected static final DATA_ACCESS_HSDPA:I = 0x9

.field protected static final DATA_ACCESS_HSPA:I = 0xb

.field protected static final DATA_ACCESS_HSUPA:I = 0xa

.field protected static final DATA_ACCESS_LTE:I = 0xe

.field protected static final DATA_ACCESS_UMTS:I = 0x3

.field protected static final DATA_ACCESS_UNKNOWN:I = 0x0

.field public static final DATA_STATE_POLL_SLEEP_MS:I = 0x64

.field protected static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x29

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x28

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_FAKE_STATE_ALLOWED:I = 0x65

.field protected static final EVENT_FAKE_STATE_FORBIDDEN:I = 0x66

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_LOC_DONE_CDMA:I = 0x1f

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field protected static final EVENT_GET_SIGNAL_STRENGTH_CDMA:I = 0x1d

.field protected static final EVENT_GSM_CF_SEARCH_RESULT:I = 0x64

.field protected static final EVENT_ICC_CHANGED:I = 0x2c

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x2d

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NETWORK_STATE_CHANGED_CDMA:I = 0x1e

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_LOADED:I = 0x21

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_SIGNAL_STRENGTH_CDMA:I = 0x1c

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_OPERATOR_CDMA:I = 0x19

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_REGISTRATION_CDMA:I = 0x18

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_ON:I = 0x2b

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE_CDMA:I = 0x20

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x2e

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field protected static final POLL_PERIOD_MILLIS:I = 0x4e20

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field protected cm:Lcom/android/internal/telephony/CommandsInterface;

.field protected dontPollSignalStrength:Z

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z

.field protected networkAttachedRegistrants:Landroid/os/RegistrantList;

.field protected newSS:Landroid/telephony/ServiceState;

.field protected pollingContext:[I

.field protected roamingOffRegistrants:Landroid/os/RegistrantList;

.field protected roamingOnRegistrants:Landroid/os/RegistrantList;

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gh"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gw"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "tg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "uk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    return-void
.end method


# virtual methods
.method protected cancelPollState()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    return-void
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollStateResult(ILandroid/os/AsyncResult;)V
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneBase;Z)V
    .locals 20
    .parameter "ar"
    .parameter "phone"
    .parameter "isGsm"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v19, v0

    .local v19, oldSignalStrength:Landroid/telephony/SignalStrength;
    const v16, 0x7fffffff

    .local v16, INVALID:I
    const/16 v3, 0x63

    .local v3, gsmRssi:I
    const/4 v4, -0x1

    .local v4, gsmBer:I
    const/4 v5, -0x1

    .local v5, cdmaDbm:I
    const/4 v6, -0x1

    .local v6, cdmaEcio:I
    const/4 v7, -0x1

    .local v7, evdoRssi:I
    const/4 v8, -0x1

    .local v8, evdoEcio:I
    const/4 v9, -0x1

    .local v9, evdoSnr:I
    const/16 v10, 0x63

    .local v10, lteRssi:I
    move/from16 v11, v16

    .local v11, lteRsrp:I
    move/from16 v12, v16

    .local v12, lteRsrq:I
    move/from16 v13, v16

    .local v13, lteSnr:I
    move/from16 v14, v16

    .local v14, lteCqi:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v2, v0

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v18, v0

    .local v18, ints:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move v2, v0

    const/16 v15, 0xc

    if-ne v2, v15, :cond_0

    const/4 v2, 0x0

    aget v2, v18, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    aget v2, v18, v2

    move v3, v2

    :goto_0
    const/4 v2, 0x1

    aget v4, v18, v2

    const/4 v2, 0x2

    aget v2, v18, v2

    if-lez v2, :cond_3

    const/4 v2, 0x2

    aget v2, v18, v2

    neg-int v2, v2

    move v5, v2

    :goto_1
    const/4 v2, 0x3

    aget v2, v18, v2

    if-lez v2, :cond_4

    const/4 v2, 0x3

    aget v2, v18, v2

    neg-int v2, v2

    move v6, v2

    :goto_2
    const/4 v2, 0x4

    aget v2, v18, v2

    if-lez v2, :cond_5

    const/4 v2, 0x4

    aget v2, v18, v2

    neg-int v2, v2

    move v7, v2

    :goto_3
    const/4 v2, 0x5

    aget v2, v18, v2

    if-lez v2, :cond_6

    const/4 v2, 0x5

    aget v2, v18, v2

    neg-int v2, v2

    move v8, v2

    :goto_4
    const/4 v2, 0x6

    aget v2, v18, v2

    if-lez v2, :cond_7

    const/4 v2, 0x6

    aget v2, v18, v2

    const/16 v9, 0x8

    if-gt v2, v9, :cond_7

    .end local v9           #evdoSnr:I
    const/4 v2, 0x6

    aget v2, v18, v2

    move v9, v2

    .restart local v9       #evdoSnr:I
    :goto_5
    const/4 v2, 0x7

    aget v2, v18, v2

    if-ltz v2, :cond_8

    const/4 v2, 0x7

    aget v2, v18, v2

    move v10, v2

    :goto_6
    const/16 v2, 0x8

    aget v2, v18, v2

    const/16 v11, 0x2c

    if-lt v2, v11, :cond_9

    .end local v11           #lteRsrp:I
    const/16 v2, 0x8

    aget v2, v18, v2

    const/16 v11, 0x8c

    if-gt v2, v11, :cond_9

    const/16 v2, 0x8

    aget v2, v18, v2

    neg-int v2, v2

    move v11, v2

    .restart local v11       #lteRsrp:I
    :goto_7
    const/16 v2, 0x9

    aget v12, v18, v2

    const/16 v2, 0xa

    aget v2, v18, v2

    const/16 v13, -0xc8

    if-lt v2, v13, :cond_a

    .end local v13           #lteSnr:I
    const/16 v2, 0xa

    aget v2, v18, v2

    const/16 v13, 0x12c

    if-gt v2, v13, :cond_a

    const/16 v2, 0xa

    aget v2, v18, v2

    move v13, v2

    .restart local v13       #lteSnr:I
    :goto_8
    const/16 v2, 0xb

    aget v14, v18, v2

    .end local v18           #ints:[I
    :cond_0
    new-instance v2, Landroid/telephony/SignalStrength;

    move/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #gsmRssi:I
    .end local v4           #gsmBer:I
    :cond_1
    :goto_9
    return-void

    .restart local v3       #gsmRssi:I
    .restart local v4       #gsmBer:I
    .restart local v18       #ints:[I
    :cond_2
    const/16 v2, 0x63

    move v3, v2

    goto/16 :goto_0

    :cond_3
    const/16 v2, -0x78

    move v5, v2

    goto/16 :goto_1

    :cond_4
    const/16 v2, -0xa0

    move v6, v2

    goto/16 :goto_2

    :cond_5
    const/16 v2, -0x78

    move v7, v2

    goto/16 :goto_3

    :cond_6
    const/4 v2, -0x1

    move v8, v2

    goto :goto_4

    .end local v9           #evdoSnr:I
    :cond_7
    const/4 v2, -0x1

    move v9, v2

    goto :goto_5

    .restart local v9       #evdoSnr:I
    :cond_8
    const/16 v2, 0x63

    move v10, v2

    goto :goto_6

    .end local v11           #lteRsrp:I
    :cond_9
    move/from16 v11, v16

    goto :goto_7

    .end local v13           #lteSnr:I
    .restart local v11       #lteRsrp:I
    :cond_a
    move/from16 v13, v16

    goto :goto_8

    .end local v18           #ints:[I
    .restart local v13       #lteSnr:I
    :catch_0
    move-exception v17

    .local v17, ex:Ljava/lang/NullPointerException;
    const-string v2, "ServiceStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #gsmRssi:I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalStrengthResult() Phone already destroyed: "

    .end local v4           #gsmBer:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SignalStrength not notified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public unregisterForRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected abstract updateSpnDisplay()V
.end method
