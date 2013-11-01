.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .parameter "context"
    .parameter "intent"

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, " MobileDataStateReceiver onReceive(): Entry."

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " intent.getAction()= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    .local v26, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v25

    .local v25, subtype:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v23

    .local v23, oldSubtype:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->setRoamingStatus(Z)V

    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subType changed, oldSubtype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "new subtype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v3

    move/from16 v1, v25

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "apnType"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, apnTypeList:Ljava/lang/String;
    const-string v3, "networkUnvailable"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    .local v28, unavailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " apnTypeList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " unavailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    if-nez v28, :cond_1

    const-string v3, "default"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v4, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "received broadcast ACTION_ANY_DATA_CONNECTION_STATE_CHANGED-->"

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- mApnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reason"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- apn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "apn"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- apnTypeState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "apnTypeState"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- ipVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ipVersion"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- anyState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v28, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "++ Returned by: mEnabled = false."

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    monitor-exit p0

    .end local v19           #apnTypeList:Ljava/lang/String;
    .end local v28           #unavailable:Z
    .end local p1
    :goto_2
    return-void

    .restart local v19       #apnTypeList:Ljava/lang/String;
    .restart local v28       #unavailable:Z
    .restart local p1
    :cond_1
    const-string v3, "MobileDataStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- mApnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MobileDataStateTracker"

    const-string v4, "- [Not APN_TYPE_DEFAULT] received broadcast: data connection state changed, but not APN_TYPE_DEFAULT "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v19           #apnTypeList:Ljava/lang/String;
    .end local v23           #oldSubtype:I
    .end local v25           #subtype:I
    .end local v26           #tm:Landroid/telephony/TelephonyManager;
    .end local v28           #unavailable:Z
    .end local p1
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v19       #apnTypeList:Ljava/lang/String;
    .restart local v23       #oldSubtype:I
    .restart local v25       #subtype:I
    .restart local v26       #tm:Landroid/telephony/TelephonyManager;
    .restart local v28       #unavailable:Z
    .restart local p1
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    #calls: Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "++ Returned by: [isApnTypeIncluded(apnTypeList)==false]"

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_2

    :cond_4
    const/16 v20, 0x1

    .local v20, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const-string v3, "default"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v4, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    move/from16 v27, v3

    .local v27, typeToCheck:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    if-nez v3, :cond_5

    const-string v3, "connectivity"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v21

    .local v21, info:Landroid/net/NetworkInfo;
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/16 v20, 0x0

    .end local v21           #info:Landroid/net/NetworkInfo;
    .end local v27           #typeToCheck:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "++CALL updateMobileInfoFromIntent"

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    #calls: Landroid/net/MobileDataStateTracker;->updateMobileInfoFromIntent(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Z

    move-result v22

    .local v22, needDetailedStateUpdate:Z
    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "needDetailedStateUpdate = false"

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_2

    .end local v22           #needDetailedStateUpdate:Z
    .restart local p1
    :cond_7
    const/4 v3, 0x0

    move/from16 v27, v3

    goto :goto_3

    .end local p1
    .restart local v22       #needDetailedStateUpdate:Z
    :cond_8
    const-string v3, "reason"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++onReceive, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    #calls: Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v24

    .local v24, state:Lcom/android/internal/telephony/Phone$DataState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_f

    :cond_9
    sget-object v24, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    const/4 v8, 0x0

    .local v8, extraInfo:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, ipv4Apn:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, ipv6Apn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    move-object v9, v0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    move-object v10, v0

    :cond_c
    if-eqz v22, :cond_d

    sget-object v3, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .end local v7           #reason:Ljava/lang/String;
    .end local v8           #extraInfo:Ljava/lang/String;
    .end local v9           #ipv4Apn:Ljava/lang/String;
    .end local v10           #ipv6Apn:Ljava/lang/String;
    .end local v19           #apnTypeList:Ljava/lang/String;
    .end local v20           #doReset:Z
    .end local v22           #needDetailedStateUpdate:Z
    .end local v24           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v28           #unavailable:Z
    :cond_d
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/MobileDataStateTracker;->notifySubtypeChanged(II)V

    :cond_e
    monitor-exit p0

    goto/16 :goto_2

    .restart local v7       #reason:Ljava/lang/String;
    .restart local v19       #apnTypeList:Ljava/lang/String;
    .restart local v20       #doReset:Z
    .restart local v22       #needDetailedStateUpdate:Z
    .restart local v24       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v28       #unavailable:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_11

    :cond_10
    sget-object v24, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_a

    :cond_12
    sget-object v24, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_4

    .restart local v8       #extraInfo:Ljava/lang/String;
    .restart local v9       #ipv4Apn:Ljava/lang/String;
    .restart local v10       #ipv6Apn:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++mEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->Entered: case DISCONNECTED and if(isTeardownRequested()==true)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++mEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->>Entered: case DISCONNECTED and (isTeardownRequested()==flase)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_14

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v6, v0

    iget-object v6, v6, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v11, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v6, v0

    sget-object v11, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v11, :cond_15

    const/4 v6, 0x1

    :goto_8
    invoke-virtual/range {v3 .. v10}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    const/4 v5, 0x0

    goto :goto_7

    :cond_15
    const/4 v6, 0x0

    goto :goto_8

    .end local v7           #reason:Ljava/lang/String;
    .end local v8           #extraInfo:Ljava/lang/String;
    .end local v9           #ipv4Apn:Ljava/lang/String;
    .end local v10           #ipv6Apn:Ljava/lang/String;
    .end local v19           #apnTypeList:Ljava/lang/String;
    .end local v20           #doReset:Z
    .end local v22           #needDetailedStateUpdate:Z
    .end local v24           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v28           #unavailable:Z
    .restart local p1
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive, ACTION_DATA_CONNECTION_FAILED, mEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    const-string v3, "reason"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #reason:Ljava/lang/String;
    const-string v3, "apn"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, apnName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " broadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    const-string v4, ""

    :goto_9
    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v11, v0

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    move v13, v3

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_19

    const/4 v3, 0x1

    move v14, v3

    :goto_b
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v7

    invoke-virtual/range {v11 .. v18}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .restart local p1
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_9

    .end local p1
    :cond_18
    const/4 v3, 0x0

    move v13, v3

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    move v14, v3

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
