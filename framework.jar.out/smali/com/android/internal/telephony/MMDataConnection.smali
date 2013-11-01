.class public Lcom/android/internal/telephony/MMDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "MMDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DATA"


# instance fields
.field DBG:Z

.field private isAvailable:Z

.field mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mOmhEnabled:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V
    .locals 2
    .parameter "dct"
    .parameter "context"
    .parameter "ci"
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/DataConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->DBG:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->isAvailable:Z

    const-string v0, "persist.omh.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mOmhEnabled:Z

    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnection;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/MMDataConnection;
    .locals 5
    .parameter "dct"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/MMDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/android/internal/telephony/MMDataConnection;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/MMDataConnection;->mCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/internal/telephony/MMDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMDC -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/MMDataConnection;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnection;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    .local v0, dc:Lcom/android/internal/telephony/MMDataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnection;->start()V

    return-object v0

    .end local v0           #dc:Lcom/android/internal/telephony/MMDataConnection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "httpProxy"
    .parameter "httpPort"

    .prologue
    const-string v2, "net.gprs.http-proxy"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "net.gprs.http-proxy"

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p2, "8080"

    :cond_3
    const-string v0, "net.gprs.http-proxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method isAvailable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->isAvailable:Z

    return v0
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 4
    .parameter "domainNameServers"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "0.0.0.0"

    const-string v0, "0.0.0.0"

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0"

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnection;->logv(Ljava/lang/String;)V

    return-void
.end method

.method logd(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

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
    .parameter "logString"

    .prologue
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

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
    .parameter "logString"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 13
    .parameter "cp"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting : dataProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logi(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    move v12, v4

    .local v12, radioTech:I
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_4

    iget-object v9, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .local v9, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v0, v9, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MMDataConnection;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v9, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .local v10, authType:I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v10, v8

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->bearerType:Lcom/android/internal/telephony/Phone$BearerType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone$BearerType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v9           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v10           #authType:I
    :cond_1
    :goto_2
    return-void

    .end local v12           #radioTech:I
    :cond_2
    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    .restart local v9       #apn:Lcom/android/internal/telephony/ApnSetting;
    .restart local v10       #authType:I
    .restart local v12       #radioTech:I
    :cond_3
    move v10, v4

    goto :goto_1

    .end local v9           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v10           #authType:I
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->bearerType:Lcom/android/internal/telephony/Phone$BearerType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$BearerType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mOmhEnabled:Z

    if-eqz v0, :cond_1

    iget-object v11, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    check-cast v11, Lcom/android/internal/telephony/DataProfileOmh;

    .local v11, dp:Lcom/android/internal/telephony/DataProfileOmh;
    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfileOmh;->getProfileId()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, profileId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMH profileId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->bearerType:Lcom/android/internal/telephony/Phone$BearerType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$BearerType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2
.end method

.method protected onQosGetStatus(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get QoS Status, qosId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getQosStatus(ILandroid/os/Message;)V

    return-void
.end method

.method protected onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V
    .locals 11
    .parameter "qosId"
    .parameter "ar"
    .parameter "error"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v7, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .local v4, qosStatusResp:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v3, 0x0

    .local v3, qosStatus:I
    const/16 v6, 0xe

    .local v6, status:I
    if-eqz v4, :cond_2

    array-length v7, v4

    if-lt v7, v10, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entire Status Msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnection;->isValidQos(I)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object v7, v4, v9

    if-eqz v7, :cond_1

    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid qosStatus:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnection;->loge(Ljava/lang/String;)V

    :goto_0
    array-length v7, v4

    if-le v7, v10, :cond_1

    new-instance v5, Lcom/android/internal/telephony/QosSpec;

    .end local v5           #spec:Lcom/android/internal/telephony/QosSpec;
    invoke-direct {v5}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .restart local v5       #spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    aget-object v7, v4, v1

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/QosSpec;->createPipe(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :pswitch_0
    const/16 v6, 0xf

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x2

    goto :goto_0

    .restart local v1       #i:I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QoS Spec for upper layers:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    .end local v1           #i:I
    :cond_1
    :goto_2
    new-instance v2, Lcom/android/internal/telephony/MMDataConnection$QosIndication;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;-><init>(Lcom/android/internal/telephony/MMDataConnection;)V

    .local v2, ind:Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setQosId(I)V

    invoke-virtual {v2, v6, p3}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setQosState(I)V

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setQosSpec(Lcom/android/internal/telephony/QosSpec;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->sendIndication()V

    return-void

    .end local v2           #ind:Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    :cond_2
    const-string v7, "Invalid Qos Status message, too few arguments"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnection;->loge(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onQosRelease(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Release, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->releaseQos(ILandroid/os/Message;)V

    return-void
.end method

.method protected onQosReleaseDone(ILjava/lang/String;)V
    .locals 5
    .parameter "qosId"
    .parameter "error"

    .prologue
    const-string v4, " error:"

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;-><init>(Lcom/android/internal/telephony/MMDataConnection;)V

    .local v0, ind:Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setQosId(I)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->sendIndication()V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosReleaseDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " QoS Flow Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    .end local v0           #ind:Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosReleaseDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 5
    .parameter "qosSpec"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Setup. QosSpec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getRilQosSpec()Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V

    return-void
.end method

.method protected onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userData"
    .parameter "responses"
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .local v1, failure:Z
    const/16 v3, 0xe

    .local v3, state:I
    new-instance v2, Lcom/android/internal/telephony/MMDataConnection$QosIndication;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;-><init>(Lcom/android/internal/telephony/MMDataConnection;)V

    .local v2, ind:Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setUserData(I)V

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setQosId(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added QosId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " QoS Flow Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2, v3, p3}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->sendIndication()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQosSetupDone Complete, userData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnection;->loge(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onQosStateChangedInd(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .local v2, qosInd:[Ljava/lang/String;
    const/16 v3, 0xe

    .local v3, qosIndState:I
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Qos State Changed Ind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnection;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQosStateChangedInd: qosId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/MMDataConnection$QosIndication;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;-><init>(Lcom/android/internal/telephony/MMDataConnection;)V

    .local v1, ind:Lcom/android/internal/telephony/MMDataConnection$QosIndication;
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setQosId(I)V

    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, qosState:I
    packed-switch v4, :pswitch_data_0

    const-string v5, "Invalid Qos State, ignoring indication!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnection;->loge(Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->sendIndication()V

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setAvailable(Z)V
    .locals 0
    .parameter "b"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnection;->isAvailable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mBearerType:Lcom/android/internal/telephony/Phone$BearerType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "ci"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->reset(Landroid/os/Message;)V

    return-void
.end method
