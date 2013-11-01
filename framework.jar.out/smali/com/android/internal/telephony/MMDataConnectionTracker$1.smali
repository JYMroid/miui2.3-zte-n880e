.class Lcom/android/internal/telephony/MMDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MMDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "intent received :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    const-string v21, "android.intent.action.SCREEN_ON"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/DataNetStatistics;->notifyScreenState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$102(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[ZTE_FEATURE_ALWAYS_ON_MOBILE] mIsScreenOn ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$100(Lcom/android/internal/telephony/MMDataConnectionTracker;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "moblie_data_enabled"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$200(Lcom/android/internal/telephony/MMDataConnectionTracker;)Landroid/app/PendingIntent;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "alarm"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .local v5, am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$200(Lcom/android/internal/telephony/MMDataConnectionTracker;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$202(Lcom/android/internal/telephony/MMDataConnectionTracker;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .end local v5           #am:Landroid/app/AlarmManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "[ZTE_FEATURE_ALWAYS_ON_MOBILE]+++Enter if+++UpdateDataConnections when screen on.(reason is DATA_ENABLED)"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "dataEnabled"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "[ZTE_FEATURE_ALWAYS_ON_MOBILE]+++Enter else+++Nothing to do when screen on."

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v21

    goto :goto_0

    :cond_4
    :try_start_4
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/DataNetStatistics;->notifyScreenState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$102(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[ZTE_FEATURE_ALWAYS_ON_MOBILE] mIsScreenOn ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$100(Lcom/android/internal/telephony/MMDataConnectionTracker;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "moblie_data_enabled"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/telephony/MMDataConnectionTracker;->setAlarmDataPoll()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$300(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v22

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J
    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/os/INetStatService;->getMobileRxPackets()J

    move-result-wide v22

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J
    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$502(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v21

    move-object/from16 v16, v21

    .local v16, snfe:Landroid/os/RemoteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J
    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J
    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$502(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .end local v4           #action:Ljava/lang/String;
    .end local v16           #snfe:Landroid/os/RemoteException;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .restart local v4       #action:Ljava/lang/String;
    :cond_5
    :try_start_7
    const-string v21, "com.android.internal.telephony.gprs-reconnect"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, reason:Ljava/lang/String;
    const-string v21, "ds"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/DataServiceType;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    .local v8, ds:Lcom/android/internal/telephony/DataServiceType;
    const-string v21, "ipv"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/net/IPVersion;->valueOf(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;

    move-result-object v12

    .local v12, ipv:Lcom/android/internal/net/IPVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v8           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v12           #ipv:Lcom/android/internal/net/IPVersion;
    .end local v15           #reason:Ljava/lang/String;
    :cond_7
    const-string v21, "android.net.wifi.STATE_CHANGE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkInfo;

    .local v14, networkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x1

    :goto_2
    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$602(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_1

    :cond_8
    const/16 v22, 0x0

    goto :goto_2

    .end local v14           #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    const-string v21, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "wifi_state"

    const/16 v22, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const/16 v21, 0x1

    move/from16 v10, v21

    .local v10, enabled:Z
    :goto_3
    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$602(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_1

    .end local v10           #enabled:Z
    :cond_a
    const/16 v21, 0x0

    move/from16 v10, v21

    goto :goto_3

    :cond_b
    const-string v21, "android.intent.action.VOICE_CALL_STARTED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_c
    const-string v21, "android.intent.action.VOICE_CALL_ENDED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_d
    const-string v21, "android.intent.action.WAKE_POLL_DATA"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "[ZTE_FEATURE_ALWAYS_ON_MOBILE]WAKE_POLL_DATA_ACTION entered."

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "moblie_data_enabled"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$400(Lcom/android/internal/telephony/MMDataConnectionTracker;)J

    move-result-wide v19

    .local v19, tmpTxPkts:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$500(Lcom/android/internal/telephony/MMDataConnectionTracker;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    move-result-wide v17

    .local v17, tmpRxPkts:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/os/INetStatService;->getMobileRxPackets()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-wide v17

    :cond_e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[ZTE_FEATURE_ALWAYS_ON_MOBILE] lastTxPkts ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$400(Lcom/android/internal/telephony/MMDataConnectionTracker;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",tmpTxPkts ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",lastRxPkts ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$500(Lcom/android/internal/telephony/MMDataConnectionTracker;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",tmpRxPkts ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$400(Lcom/android/internal/telephony/MMDataConnectionTracker;)J

    move-result-wide v21

    cmp-long v21, v21, v19

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$500(Lcom/android/internal/telephony/MMDataConnectionTracker;)J

    move-result-wide v21

    cmp-long v21, v21, v17

    if-eqz v21, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastTxPkts:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->lastRxPkts:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$502(Lcom/android/internal/telephony/MMDataConnectionTracker;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/telephony/MMDataConnectionTracker;->setAlarmDataPoll()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$300(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    goto/16 :goto_1

    .end local v17           #tmpRxPkts:J
    .end local v19           #tmpTxPkts:J
    :catch_2
    move-exception v21

    goto/16 :goto_1

    .restart local v17       #tmpRxPkts:J
    .restart local v19       #tmpTxPkts:J
    :catch_3
    move-exception v21

    move-object/from16 v9, v21

    .local v9, e:Landroid/os/RemoteException;
    const-string v21, "DATA"

    const-string v22, "lllccc  read Pkts failed !"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/net/IPVersion;->values()[Lcom/android/internal/net/IPVersion;

    move-result-object v6

    .local v6, arr$:[Lcom/android/internal/net/IPVersion;
    array-length v13, v6

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_4
    if-ge v11, v13, :cond_e

    aget-object v12, v6, v11

    .restart local v12       #ipv:Lcom/android/internal/net/IPVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v7

    .local v7, dc:Lcom/android/internal/telephony/DataConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "dataSleep"

    move-object/from16 v0, v21

    move-object v1, v7

    move-object/from16 v2, v22

    #calls: Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$700(Lcom/android/internal/telephony/MMDataConnectionTracker;Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .end local v7           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v6           #arr$:[Lcom/android/internal/net/IPVersion;
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v11           #i$:I
    .end local v12           #ipv:Lcom/android/internal/net/IPVersion;
    .end local v13           #len$:I
    :cond_11
    const-string v21, "DATA"

    const-string v22, "lllccc CleanUp when timer is expired"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/net/IPVersion;->values()[Lcom/android/internal/net/IPVersion;

    move-result-object v6

    .restart local v6       #arr$:[Lcom/android/internal/net/IPVersion;
    array-length v13, v6

    .restart local v13       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_5
    if-ge v11, v13, :cond_2

    aget-object v12, v6, v11

    .restart local v12       #ipv:Lcom/android/internal/net/IPVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/net/IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v7

    .restart local v7       #dc:Lcom/android/internal/telephony/DataConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "dataSleep"

    move-object/from16 v0, v21

    move-object v1, v7

    move-object/from16 v2, v22

    #calls: Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$700(Lcom/android/internal/telephony/MMDataConnectionTracker;Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    .end local v7           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_5
.end method
