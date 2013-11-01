.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$1;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x14

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x15

.field protected static final EVENT_CONNECT_DONE:I = 0x5

.field protected static final EVENT_DATA_CALL_DROPPED:I = 0x1f

.field protected static final EVENT_DATA_CALL_LIST_CHANGED:I = 0xa

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0xb

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0xc

.field protected static final EVENT_DATA_PROFILE_DB_CHANGED:I = 0xf

.field protected static final EVENT_DISCONNECT_DONE:I = 0x4

.field protected static final EVENT_MASTER_DATA_DISABLED:I = 0x11

.field protected static final EVENT_MASTER_DATA_ENABLED:I = 0x10

.field protected static final EVENT_NATION_ROAMING_OFF:I = 0x21

.field protected static final EVENT_NATION_ROAMING_ON:I = 0x20

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x1a

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x19

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_ON:I = 0x8

.field protected static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x12

.field protected static final EVENT_RECORDS_LOADED:I = 0x1e

.field protected static final EVENT_ROAMING_OFF:I = 0xe

.field protected static final EVENT_ROAMING_ON:I = 0xd

.field protected static final EVENT_SERVICE_TYPE_DISABLED:I = 0x2

.field protected static final EVENT_SERVICE_TYPE_ENABLED:I = 0x3

.field protected static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x13

.field protected static final EVENT_UPDATE_DATA_CONNECTIONS:I = 0x1

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x7

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x6

.field protected static final REASON_CDMA_OTA_PROVISION:Ljava/lang/String; = "cdmaOtaPovisioning"

.field protected static final REASON_CDMA_SUBSCRIPTION_SOURCE_CHANGED:Ljava/lang/String; = "cdmaSubscriptionSourceChanged"

.field protected static final REASON_DATA_CONN_PROP_CHANGED:Ljava/lang/String; = "dataConnectionPropertyChanged"

.field protected static final REASON_DATA_NETWORK_ATTACH:Ljava/lang/String; = "dataNetworkAttached"

.field protected static final REASON_DATA_NETWORK_DETACH:Ljava/lang/String; = "dataNetworkDetached"

.field protected static final REASON_DATA_PROFILE_LIST_CHANGED:Ljava/lang/String; = "dataProfileDbChanged"

.field protected static final REASON_DATA_READINESS_CHECKS_MODIFIED:Ljava/lang/String; = "dataReadinessChecksModified"

.field protected static final REASON_DEFAULT_DATA_DISABLED:Ljava/lang/String; = "defaultDataDisabled"

.field protected static final REASON_DEFAULT_DATA_ENABLED:Ljava/lang/String; = "defaultDataEnabled"

.field protected static final REASON_ICC_RECORDS_LOADED:Ljava/lang/String; = "iccRecordsLoaded"

.field protected static final REASON_MASTER_DATA_DISABLED:Ljava/lang/String; = "masterDataDisabled"

.field protected static final REASON_MASTER_DATA_ENABLED:Ljava/lang/String; = "masterDataEnabled"

.field protected static final REASON_NATION_ROAMING_OFF:Ljava/lang/String; = "nationRoamingOff"

.field protected static final REASON_NATION_ROAMING_ON:Ljava/lang/String; = "nationRoamingOn"

.field protected static final REASON_NETWORK_DISCONNECT:Ljava/lang/String; = "networkOrModemDisconnect"

.field protected static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field protected static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field protected static final REASON_RADIO_OFF:Ljava/lang/String; = "radioOff"

.field protected static final REASON_RADIO_ON:Ljava/lang/String; = "radioOn"

.field protected static final REASON_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "radioTechnologyChanged"

.field protected static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field protected static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field protected static final REASON_SERVICE_TYPE_DISABLED:Ljava/lang/String; = "apnTypeDisabled"

.field protected static final REASON_SERVICE_TYPE_ENABLED:Ljava/lang/String; = "apnTypeEnabled"

.field protected static final REASON_TETHERED_MODE_STATE_CHANGED:Ljava/lang/String; = "tetheredModeStateChanged"

.field protected static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field protected static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mCheckForConnectivity:Z

.field protected mCheckForSubscription:Z

.field mCm:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mDnsCheckDisabled:Z

.field mDpt:Lcom/android/internal/telephony/DataProfileTracker;

.field mMasterDataEnabled:Z

.field mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field mSubscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "DATA"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForSubscription:Z

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    new-instance v0, Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/telephony/DataProfileTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    return-void
.end method

.method private getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .local v1, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .local v0, dsState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->isConcurrentVoiceAndData()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public apnTypeAvailable(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeAvailable(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    const-string v1, "apnTypeDisabled"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-nez v0, :cond_0

    move v1, v3

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #serviceType:Lcom/android/internal/telephony/DataServiceType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->disableDataConnectivity(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public disableDataConnectivity(Landroid/os/Message;)Z
    .locals 3
    .parameter "onCompleteMsg"

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++mMasterDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".++In disableDataConnectivity()++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .parameter "b"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected abstract disableQos(I)I
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const-string v2, "apnTypeEnabled"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    goto :goto_0

    .end local v0           #serviceType:Lcom/android/internal/telephony/DataServiceType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableDataConnectivity()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, inEcm:Z
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++mMasterDataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".++In enableDataConnectivity()++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0
.end method

.method protected abstract enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "default"

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApn(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 6
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v2

    .local v2, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v5

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v0, :cond_2

    move-object v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_3

    check-cast v1, Lcom/android/internal/telephony/ApnSetting;

    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    iget-object v3, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v1       #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_3
    move-object v3, v5

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
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
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .local v5, ret:[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public abstract getCurrentDataConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 7

    .prologue
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .local v4, ret:Lcom/android/internal/telephony/Phone$DataState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v5, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_3

    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_4

    sget-object v5, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_5

    :cond_4
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, ds:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataOnNationalRoamingEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v1, "data_nation_roaming"

    :try_start_0
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangcheng getDataOnNationalRoamingEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_nation_roaming"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_nation_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v5

    goto :goto_0
.end method

.method public getDataRoamingEnabled()Z
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

.method public abstract getDataServiceState()Landroid/telephony/ServiceState;
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDnsServers(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)[Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    .end local p0
    :goto_0
    return-object v2

    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getGateway(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpAddress(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getPreferredSpn()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getQosStatus(I)I
.end method

.method public getSpnList()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSubscription()I
.end method

.method public abstract getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] Unhandle event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOn()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOff()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onConnectDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onMasterDataDisabled(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onMasterDataEnabled()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onNationRoamingOn()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onNationRoamingOff()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected abstract isConcurrentVoiceAndData()Z
.end method

.method public isDataConnectivityEnabled()Z
    .locals 3

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++mMasterDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".++In isDataConnectivityEnabled()++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    return v0
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    return v0
.end method

.method protected abstract modifyQos(ILcom/android/internal/telephony/QosSpec;)I
.end method

.method protected notifyAllDataServiceTypes(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    return-void
.end method

.method public notifyDataActivity()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V
    .locals 3
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    const-string v2, "DATA"

    const-string v0, "DATA"

    const-string v0, "DataConnectionTracker.notifyDataConnection() entered."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscription()I

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "DATA"

    const-string v0, "Begin to call mNotifier.notifyDataConnection."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/net/IPVersion;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DATA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DCT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] notifyDataConnection: Not the active DDS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyDataConnectionFail(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .local v3, isAnyServiceActive:Z
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscription()I

    move-result v5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v5, "DATA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DCT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getSubscription()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] notifyDataConnectionFail: Not the active DDS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected abstract onConnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onMasterDataDisabled(Landroid/os/Message;)V
.end method

.method protected abstract onMasterDataEnabled()V
.end method

.method public abstract onNationRoamingOff()V
.end method

.method public abstract onNationRoamingOn()V
.end method

.method protected abstract onRadioOff()V
.end method

.method protected abstract onRadioOn()V
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected abstract onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V
.end method

.method protected abstract onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public abstract registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method protected abstract resumeQos(I)I
.end method

.method protected abstract setDataConnectionAsDesired(ZLandroid/os/Message;)V
.end method

.method public setDataOnNationalRoamingEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangcheng setDataOnNationalRoamingEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "true"

    const-string v2, "gsm.operator.isnationroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, nationroaming:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnNationalRoamingEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_nation_roaming"

    if-eqz p1, :cond_2

    move v3, v5

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    .end local v0           #nationroaming:Z
    :cond_1
    move v3, v4

    goto :goto_0

    .restart local v0       #nationroaming:Z
    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public abstract setDataReadinessChecks(ZZZ)V
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "p"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public setPreferredSpn(Ljava/lang/String;)V
    .locals 0
    .parameter "spn"

    .prologue
    return-void
.end method

.method public abstract setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V
.end method

.method protected abstract suspendQos(I)I
.end method

.method public abstract unregisterForAllDataDisconnected(Landroid/os/Handler;)V
.end method

.method public abstract update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ProxyManager$Subscription;)V
.end method
