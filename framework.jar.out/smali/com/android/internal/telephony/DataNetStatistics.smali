.class Lcom/android/internal/telephony/DataNetStatistics;
.super Ljava/lang/Object;
.source "DataNetStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0


# instance fields
.field dc:Lcom/android/internal/telephony/DataConnectionTracker;

.field private enablePoll:Z

.field public mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field private mIsScreenOn:Z

.field private netStatPollPeriod:J

.field netstat:Landroid/os/INetStatService;

.field private rxPkts:J

.field private sentSinceLastRecv:J

.field private txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 1
    .parameter "dataConnectionTracker"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    iput-object p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v0, "netstat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    return-void
.end method


# virtual methods
.method public declared-synchronized getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnablePoll()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    return v0
.end method

.method public notifyScreenState(Z)V
    .locals 0
    .parameter "b"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    return-void
.end method

.method public resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v4, -0x1

    .local v4, preTxPkts:J
    const-wide/16 v2, -0x1

    .local v2, preRxPkts:J
    iget-wide v4, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    iget-wide v2, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v10}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v10}, Landroid/os/INetStatService;->getMobileRxPackets()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    if-eqz v10, :cond_1

    cmp-long v10, v4, v12

    if-gtz v10, :cond_0

    cmp-long v10, v2, v12

    if-lez v10, :cond_1

    :cond_0
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    sub-long v8, v10, v4

    .local v8, sent:J
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    sub-long v6, v10, v2

    .local v6, received:J
    cmp-long v10, v8, v12

    if-lez v10, :cond_3

    cmp-long v10, v6, v12

    if-lez v10, :cond_3

    iput-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .local v1, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    if-eq v10, v1, :cond_1

    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataActivity()V

    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v6           #received:J
    .end local v8           #sent:J
    :cond_1
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pdp_watchdog_poll_interval_ms"

    const/16 v12, 0x3e8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    :goto_2
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-wide v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :catch_0
    move-exception v10

    move-object v0, v10

    .local v0, e:Landroid/os/RemoteException;
    iput-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    iput-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v6       #received:J
    .restart local v8       #sent:J
    :cond_3
    cmp-long v10, v8, v12

    if-lez v10, :cond_4

    cmp-long v10, v6, v12

    if-nez v10, :cond_4

    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_1

    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_4
    cmp-long v10, v8, v12

    if-nez v10, :cond_5

    cmp-long v10, v6, v12

    if-lez v10, :cond_5

    iput-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_1

    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_5
    cmp-long v10, v8, v12

    if-nez v10, :cond_7

    cmp-long v10, v6, v12

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v10, v11, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    move-object v1, v10

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_3
    goto :goto_1

    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_6
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v1, v10

    goto :goto_3

    :cond_7
    iput-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v10, v11, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    move-object v1, v10

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_4
    goto/16 :goto_1

    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v1, v10

    goto :goto_4

    .end local v6           #received:J
    .end local v8           #sent:J
    :cond_9
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pdp_watchdog_long_poll_interval_ms"

    const v12, 0x927c0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    goto :goto_2
.end method

.method public declared-synchronized setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V
    .locals 1
    .parameter "mActivity"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnablePoll(Z)V
    .locals 0
    .parameter "enablePoll"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    return-void
.end method
