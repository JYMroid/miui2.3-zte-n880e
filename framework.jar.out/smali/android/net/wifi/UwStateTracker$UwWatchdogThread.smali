.class Landroid/net/wifi/UwStateTracker$UwWatchdogThread;
.super Ljava/lang/Thread;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UwWatchdogThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/UwStateTracker;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v0, "UwWatchdogThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;->this$0:Landroid/net/wifi/UwStateTracker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;->this$0:Landroid/net/wifi/UwStateTracker;

    new-instance v2, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;->this$0:Landroid/net/wifi/UwStateTracker;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;-><init>(Landroid/net/wifi/UwStateTracker;Landroid/net/wifi/UwStateTracker$1;)V

    #setter for: Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    invoke-static {v1, v2}, Landroid/net/wifi/UwStateTracker;->access$102(Landroid/net/wifi/UwStateTracker;Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
