.class Landroid/net/wifi/UwStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/UwStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    const-string v2, "com.android.wifi.UwStateTracker.action.keep_alive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    move-result-object v2

    #calls: Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->backgroundKeepAlive()Z
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->access$200(Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$300(Landroid/net/wifi/UwStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v3, "DelayKeepAlive and Wifi is connected"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    move-result-object v2

    #calls: Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->backgroundKeepAlive()Z
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->access$200(Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;)Z

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$302(Landroid/net/wifi/UwStateTracker;Z)Z

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v3}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    invoke-virtual {v2, v5}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->removeMessages(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$400(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwState;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/UwState;->isConnected(Landroid/net/wifi/UwState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v3, "start Wifi exception timer ,when uw is connected"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v3}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/UwStateTracker$1;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v4}, Landroid/net/wifi/UwStateTracker;->access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    const-string v4, ""

    invoke-virtual {v3, v5, v4}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
