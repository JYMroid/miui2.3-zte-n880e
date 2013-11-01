.class Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
.super Landroid/os/Handler;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UwWatchdogHandler"
.end annotation


# static fields
.field static final EVENT_DEBUG_LOGIN:I = 0x1

.field static final EVENT_DEBUG_LOGOUT:I = 0x2

.field static final EVENT_KEEP_ALIVE:I = 0x0

.field static final EVENT_TIMER_DELAY_KEEP_ALIVE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/UwStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/UwStateTracker;Landroid/net/wifi/UwStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;-><init>(Landroid/net/wifi/UwStateTracker;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->backgroundKeepAlive()Z

    move-result v0

    return v0
.end method

.method private backgroundKeepAlive()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v3, "backgroundKeepAlive"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$1200(Landroid/net/wifi/UwStateTracker;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, networkinfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v3, "networkinfo.isConnected()"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$400(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwState;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/UwState;->isConnected(Landroid/net/wifi/UwState;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$400(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/UwState;->TURN_SETUP_FAILED:Landroid/net/wifi/UwState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v3, "keep alive exception ,wrong uwstate"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    sget-object v3, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/net/wifi/UwNative;->UwDisconnectNotify()I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->stopWatchdog()V

    move v2, v4

    :goto_0
    return v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    invoke-static {}, Landroid/net/wifi/UwNative;->UwKeepAlive()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->keepWatchdog()V

    move v2, v5

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    sget-object v3, Landroid/net/wifi/UwState;->DISCONNECTED:Landroid/net/wifi/UwState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v3, "networkinfo.isnotConnected"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #setter for: Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z
    invoke-static {v2, v5}, Landroid/net/wifi/UwStateTracker;->access$302(Landroid/net/wifi/UwStateTracker;Z)Z

    const/4 v2, 0x3

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v5

    goto :goto_0
.end method

.method private handleBackgroundCheckAp(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->backgroundKeepAlive()Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v1, "debug login"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/UwStateTracker;->funcCallBack_login(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v1, "debug logout"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v0, v2}, Landroid/net/wifi/UwStateTracker;->funcCallBack_logout(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v1, "EVENT_TIMER_DELAY_KEEP_ALIVE wifi excpetion"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #setter for: Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z
    invoke-static {v0, v2}, Landroid/net/wifi/UwStateTracker;->access$302(Landroid/net/wifi/UwStateTracker;Z)Z

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    sget-object v1, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    invoke-virtual {v0, v1}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/UwNative;->UwDisconnectNotify()I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->stopWatchdog()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method keepWatchdog()V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #calls: Landroid/net/wifi/UwStateTracker;->getBackgroundCheckDelayMs()I
    invoke-static {v4}, Landroid/net/wifi/UwStateTracker;->access$900(Landroid/net/wifi/UwStateTracker;)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .local v0, triggerTime:J
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$1100(Landroid/net/wifi/UwStateTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mKeepAliveIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wifi/UwStateTracker;->access$1000(Landroid/net/wifi/UwStateTracker;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method startWatchdog()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->backgroundKeepAlive()Z

    return-void
.end method

.method stopWatchdog()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker;->access$302(Landroid/net/wifi/UwStateTracker;Z)Z

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/UwStateTracker;->access$1100(Landroid/net/wifi/UwStateTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mKeepAliveIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker;->access$1000(Landroid/net/wifi/UwStateTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
