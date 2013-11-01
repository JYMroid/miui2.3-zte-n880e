.class public Lcom/android/internal/telephony/DataServiceInfo;
.super Ljava/lang/Object;
.source "DataServiceInfo.java"


# static fields
.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field private static final DEFAULT_DATA_RETRY_CONFIG_H3G:Ljava/lang/String; = "max_retries=9,20000,40000,80000,160000,320000,640000,1280000,2560000,5120000"

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"


# instance fields
.field private activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

.field private activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

.field private ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field private ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field private isEnabled:Z

.field mContext:Landroid/content/Context;

.field private mDataProfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhEnabled:Z

.field private mRetryMgr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/net/IPVersion;",
            "Lcom/android/internal/telephony/RetryManager;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceType:Lcom/android/internal/telephony/DataServiceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DataServiceType;)V
    .locals 3
    .parameter "context"
    .parameter "serviceType"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "persist.omh.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mOmhEnabled:Z

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/DataServiceInfo;->mServiceType:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->createRetryManager(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->createRetryManager(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceInfo;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->isEnabled:Z

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->resetServiceConnectionState()V

    return-void
.end method

.method private createRetryManager(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/RetryManager;
    .locals 4
    .parameter "serviceType"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .local v0, retryMgr:Lcom/android/internal/telephony/RetryManager;
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_1

    const-string v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->loge(Ljava/lang/String;)V

    const/16 v1, 0x14

    const/16 v2, 0x7d0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Could not configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->loge(Ljava/lang/String;)V

    const-string v1, "max_retries=3, 333, 333, 333"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public addDataProfile(Lcom/android/internal/telephony/DataProfile;)V
    .locals 1
    .parameter "dp"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearDataProfiles()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method getActiveDataConnection(Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;
    .locals 1
    .parameter "ipv"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataProfiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLogPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->mServiceType:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextArbitratedProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .locals 6
    .parameter "profileType"
    .parameter "ipv"

    .prologue
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataServiceInfo;->mOmhEnabled:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne p1, v4, :cond_7

    const-string v4, "[OMH] Looking at OMH profiles"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, profile:Lcom/android/internal/telephony/DataProfile;
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/DataProfile;->isWorking(Lcom/android/internal/net/IPVersion;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getBearerType()Lcom/android/internal/telephony/Phone$BearerType;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/Phone$BearerType;->supportsIpVersion(Lcom/android/internal/net/IPVersion;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "[OMH] Invalid priority, skipping profile..."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceInfo;->mServiceType:Lcom/android/internal/telephony/DataServiceType;

    sget-object v5, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    if-ne v4, v5, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityLower(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v1

    :cond_3
    goto :goto_0

    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v1

    :cond_5
    goto :goto_0

    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_6
    move-object v4, v3

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #profile:Lcom/android/internal/telephony/DataProfile;
    :goto_1
    return-object v4

    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method getNextWorkingAndroidProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .locals 4
    .parameter "profileType"
    .parameter "ipv"

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->mOmhEnabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne p1, v2, :cond_0

    const-string v2, "No suitable OMH profiles found, fallback to CDMA NAI"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    sget-object p1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/DataProfile;->isWorking(Lcom/android/internal/net/IPVersion;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getBearerType()Lcom/android/internal/telephony/Phone$BearerType;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/Phone$BearerType;->supportsIpVersion(Lcom/android/internal/net/IPVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Profile Chosen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    move-object v2, v0

    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getNextWorkingDataProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .locals 1
    .parameter "profileType"
    .parameter "ipv"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getNextArbitratedProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getNextWorkingAndroidProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getRetryManager(Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "ipv"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/RetryManager;

    return-object p0
.end method

.method public getState(Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "ipv"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0
.end method

.method isDataServiceTypeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->isEnabled:Z

    return v0
.end method

.method isServiceTypeActive()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive(Lcom/android/internal/net/IPVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive(Lcom/android/internal/net/IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isServiceTypeActive(Lcom/android/internal/net/IPVersion;)Z
    .locals 4
    .parameter "ipVersion"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method resetServiceConnectionState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/net/IPVersion;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/net/IPVersion;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    return-void
.end method

.method setDataServiceTypeAsActive(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/net/IPVersion;)V
    .locals 2
    .parameter "dc"
    .parameter "ipv"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "service set as active with null parameters!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is active on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " through cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p2, v0, :cond_3

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/net/IPVersion;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p2, v0, :cond_2

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_1
.end method

.method setDataServiceTypeAsInactive(Lcom/android/internal/net/IPVersion;)V
    .locals 3
    .parameter "ipv"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is inactive on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/net/IPVersion;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_0

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_0
.end method

.method setServiceTypeEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->isEnabled:Z

    return-void
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/net/IPVersion;)V
    .locals 2
    .parameter "newState"
    .parameter "ipv"

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object v0, v1

    .local v0, oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :goto_0
    if-eq p1, v0, :cond_0

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p2, v1, :cond_2

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object v0, v1

    goto :goto_0

    .restart local v0       #oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_2
    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p2, v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
